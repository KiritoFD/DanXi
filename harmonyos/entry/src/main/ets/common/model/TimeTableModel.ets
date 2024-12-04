/**
 * TimeTable model class
 */

import { Course } from './CourseModel';
import { CourseTime } from './CourseTimeModel';

/**
 * Event class
 * Represents a course event at a specific time
 */
export class Event {
  course: Course;
  time: CourseTime;
  enabled: boolean;

  constructor(course: Course, time: CourseTime, enabled: boolean = true) {
    this.course = course;
    this.time = time;
    this.enabled = enabled;
  }
}

/**
 * Table display type enum
 */
export enum TableDisplayType {
  FULL = 'FULL',       // Add everyday in the result
  STANDARD = 'STANDARD'  // Only add days that have courses
}

/**
 * TimeNow class
 * Represents a specific time in the semester
 */
export class TimeNow {
  week: number;    // Week number in semester
  weekDay: number; // Day of week (0-6, Monday is 0)
  slot: number;    // Slot number in day

  constructor(week: number, weekDay: number, slot: number) {
    this.week = week;
    this.weekDay = weekDay;
    this.slot = slot;
  }
}

/**
 * TimeTable class
 * Represents a complete course timetable
 */
export class TimeTable {
  // Constants
  static readonly MAX_WEEK = 18;
  static readonly MINUTES_OF_COURSE = 45;

  // Course slot start times
  static readonly COURSE_SLOT_START_TIMES = [
    { hour: 8, minute: 0 },   // 1
    { hour: 8, minute: 55 },  // 2
    { hour: 9, minute: 55 },  // 3
    { hour: 10, minute: 50 }, // 4
    { hour: 11, minute: 45 }, // 5
    { hour: 13, minute: 30 }, // 6
    { hour: 14, minute: 25 }, // 7
    { hour: 15, minute: 25 }, // 8
    { hour: 16, minute: 20 }, // 9
    { hour: 17, minute: 15 }, // 10
    { hour: 18, minute: 30 }, // 11
    { hour: 19, minute: 25 }, // 12
    { hour: 20, minute: 20 }  // 13
  ];

  courses: Course[];
  startDate: Date;

  constructor(startDate: Date = new Date(), courses: Course[] = []) {
    this.startDate = startDate;
    this.courses = courses;
  }

  /**
   * Get current time in semester
   * @returns TimeNow object
   */
  now(): TimeNow {
    const today = new Date();
    const diffTime = today.getTime() - this.startDate.getTime();
    const diffDays = Math.floor(diffTime / (1000 * 60 * 60 * 24));
    
    const week = Math.floor(diffDays / 7);
    const weekDay = today.getDay() === 0 ? 6 : today.getDay() - 1;
    
    // Calculate current slot
    const currentHour = today.getHours();
    const currentMinute = today.getMinutes();
    let slot = -1;
    
    for (let i = 0; i < TimeTable.COURSE_SLOT_START_TIMES.length; i++) {
      const slotTime = TimeTable.COURSE_SLOT_START_TIMES[i];
      if (currentHour < slotTime.hour || 
         (currentHour === slotTime.hour && currentMinute < slotTime.minute)) {
        break;
      }
      slot = i;
    }

    return new TimeNow(week, weekDay, slot);
  }

  /**
   * Get courses for a specific week
   * @param week Week number
   * @returns Map of courses by weekday
   */
  getWeekCourses(week: number): Map<number, Course[]> {
    const weekCourses = new Map<number, Course[]>();
    
    // Initialize empty arrays for each day
    for (let i = 0; i < 7; i++) {
      weekCourses.set(i, []);
    }

    // Add courses to corresponding days
    for (const course of this.courses) {
      if (course.availableWeeks?.includes(week)) {
        course.times?.forEach(time => {
          const dayCourses = weekCourses.get(time.weekDay) || [];
          dayCourses.push(course);
          weekCourses.set(time.weekDay, dayCourses);
        });
      }
    }

    return weekCourses;
  }

  /**
   * Convert courses to events for a specific week
   * @param week Week number
   * @param displayType Display type
   * @returns Array of events by day
   */
  toDayEvents(week: number, displayType: TableDisplayType = TableDisplayType.STANDARD): Event[][] {
    const events: Event[][] = Array(7).fill([]).map(() => []);
    const weekCourses = this.getWeekCourses(week);

    weekCourses.forEach((courses, weekDay) => {
      if (courses.length > 0 || displayType === TableDisplayType.FULL) {
        courses.forEach(course => {
          course.times?.forEach(time => {
            if (time.weekDay === weekDay) {
              events[weekDay].push(new Event(course, time));
            }
          });
        });
      }
    });

    return events;
  }

  /**
   * Create TimeTable from HTML (for undergraduate)
   * @param startDate Semester start date
   * @param html HTML content
   * @returns TimeTable object
   */
  static fromHtml(startDate: Date, html: string): TimeTable {
    const courses: Course[] = [];
    const coursePattern = /activity = new TaskActivity\("([^"]+)","([^"]+)","([^"]+)","([^"]+)","([^"]+)","([^"]+)","([^"]+)","([^"]+)"\);/g;
    
    let match;
    while ((match = coursePattern.exec(html)) !== null) {
      try {
        const course = Course.fromHtmlPart(match[0]);
        courses.push(course);
      } catch (error) {
        console.error('Failed to parse course:', error);
      }
    }

    return new TimeTable(startDate, courses);
  }

  /**
   * Create TimeTable from JSON (for postgraduate)
   * @param startDate Semester start date
   * @param json JSON data
   * @returns TimeTable object
   */
  static fromPGJson(startDate: Date, json: any): TimeTable {
    const courses: Course[] = [];
    const courseData = json.data || [];

    for (const item of courseData) {
      try {
        const course = Course.fromPGPart(item);
        courses.push(course);
      } catch (error) {
        console.error('Failed to parse course:', error);
      }
    }

    return new TimeTable(startDate, courses);
  }

  /**
   * Convert to JSON object
   * @returns JSON object
   */
  toJSON(): object {
    return {
      startDate: this.startDate.toISOString(),
      courses: this.courses
    };
  }
}
