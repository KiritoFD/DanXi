/**
 * Calendar service class
 * Handles calendar operations for courses
 */

import { BaseService } from './BaseService';
import { Course } from '../model/CourseModel';
import { TimeTable } from '../model/TimeTableModel';
import calendar from '@ohos.calendar';

@Observed
export class CalendarService extends BaseService {
  private static instance: CalendarService;

  private constructor() {
    super();
  }

  /**
   * Get singleton instance
   * @returns CalendarService instance
   */
  static getInstance(): CalendarService {
    if (!CalendarService.instance) {
      CalendarService.instance = new CalendarService();
    }
    return CalendarService.instance;
  }

  /**
   * Export courses to calendar
   * @param timeTable TimeTable object containing courses
   * @param startDate Semester start date
   * @returns Number of successfully exported courses
   */
  async exportToCalendar(timeTable: TimeTable): Promise<number> {
    let successCount = 0;

    for (const course of timeTable.courses) {
      try {
        // 为每个时间段创建事件
        for (const time of course.times || []) {
          // 计算事件开始时间
          const startDate = this.getNextDayOfWeek(
            timeTable.startDate,
            time.weekDay
          );
          const [startHour, startMinute] = time.getStartTime().split(':').map(Number);
          startDate.setHours(startHour, startMinute, 0, 0);

          // 计算事件结束时间
          const [endHour, endMinute] = time.getEndTime().split(':').map(Number);
          const endDate = new Date(startDate);
          endDate.setHours(endHour, endMinute, 0, 0);

          // 为每个可用的周次创建事件
          for (const week of course.availableWeeks || []) {
            const eventStartDate = new Date(startDate);
            eventStartDate.setDate(eventStartDate.getDate() + (week - 1) * 7);
            
            const eventEndDate = new Date(endDate);
            eventEndDate.setDate(eventEndDate.getDate() + (week - 1) * 7);

            const eventInfo = {
              title: course.courseName,
              description: `教师：${course.teacherNames.join(', ')}\n地点：${course.roomName}`,
              startTime: eventStartDate.getTime(),
              endTime: eventEndDate.getTime(),
              location: course.roomName,
              isAllDay: false,
              // 每周重复
              repeatRule: {
                frequency: 'WEEKLY',
                interval: 1,
                count: 1 // 只重复一次，因为我们手动为每周创建事件
              }
            };

            await calendar.addEvent(eventInfo);
            successCount++;
          }
        }
      } catch (error) {
        console.error(`导出课程 ${course.courseName} 到日历失败:`, error);
      }
    }

    return successCount;
  }

  /**
   * Get next occurrence of a weekday after a date
   * @param date Base date
   * @param targetWeekDay Target weekday (0-6, 0 is Monday)
   * @returns Date of next occurrence
   */
  private getNextDayOfWeek(date: Date, targetWeekDay: number): Date {
    const resultDate = new Date(date);
    const currentWeekDay = date.getDay();
    // 将周日的0改为7，使其符合我们的星期表示（周一为0）
    const adjustedCurrentDay = currentWeekDay === 0 ? 6 : currentWeekDay - 1;
    
    let daysToAdd = targetWeekDay - adjustedCurrentDay;
    if (daysToAdd <= 0) {
      daysToAdd += 7;
    }
    
    resultDate.setDate(date.getDate() + daysToAdd);
    return resultDate;
  }

  /**
   * Delete all course events from calendar
   * @param timeTable TimeTable object containing courses to delete
   * @returns Number of successfully deleted events
   */
  async deleteAllCourseEvents(timeTable: TimeTable): Promise<number> {
    let deletedCount = 0;
    
    try {
      // 获取所有日历事件
      const events = await calendar.getEvents({
        startTime: timeTable.startDate.getTime(),
        endTime: this.getSemesterEndDate(timeTable.startDate).getTime()
      });

      // 删除与课程相关的事件
      for (const event of events) {
        if (timeTable.courses.some(course => 
          event.title === course.courseName || 
          event.description?.includes(course.teacherNames[0])
        )) {
          await calendar.deleteEvent(event.id);
          deletedCount++;
        }
      }
    } catch (error) {
      console.error('删除日历事件失败:', error);
    }

    return deletedCount;
  }

  /**
   * Calculate semester end date (18 weeks after start date)
   * @param startDate Semester start date
   * @returns Semester end date
   */
  private getSemesterEndDate(startDate: Date): Date {
    const endDate = new Date(startDate);
    endDate.setDate(startDate.getDate() + 18 * 7); // 18周
    return endDate;
  }
}
