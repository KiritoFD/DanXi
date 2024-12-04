/**
 * Custom course service class
 * Handles custom course management
 */

import { BaseService } from './BaseService';
import { Course, CourseType } from '../model/CourseModel';
import { CourseTime } from '../model/CourseTimeModel';
import { StorageService } from './StorageService';

@Observed
export class CustomCourseService extends BaseService {
  private static instance: CustomCourseService;
  private storageService: StorageService;
  
  private static readonly CUSTOM_COURSES_KEY = 'custom_courses';

  private constructor() {
    super();
    this.storageService = StorageService.getInstance();
  }

  /**
   * Get singleton instance
   * @returns CustomCourseService instance
   */
  static getInstance(): CustomCourseService {
    if (!CustomCourseService.instance) {
      CustomCourseService.instance = new CustomCourseService();
    }
    return CustomCourseService.instance;
  }

  /**
   * Add custom course
   * @param course Course to add
   * @returns true if successful
   */
  async addCustomCourse(course: Course): Promise<boolean> {
    try {
      const courses = await this.getCustomCourses();
      
      // 检查课程时间冲突
      if (this.checkTimeConflict(course, courses)) {
        throw new Error('课程时间冲突');
      }

      // 确保课程有自定义ID
      if (!course.courseId.startsWith('custom_')) {
        course.courseId = `custom_${new Date().getTime()}`;
      }

      courses.push(course);
      await this.storageService.setObject(CustomCourseService.CUSTOM_COURSES_KEY, courses);
      return true;
    } catch (error) {
      console.error('添加自定义课程失败:', error);
      return false;
    }
  }

  /**
   * Delete custom course
   * @param courseId Course ID to delete
   * @returns true if successful
   */
  async deleteCourse(courseId: string): Promise<boolean> {
    try {
      const courses = await this.getCustomCourses();
      const updatedCourses = courses.filter(course => course.courseId !== courseId);
      await this.storageService.setObject(CustomCourseService.CUSTOM_COURSES_KEY, updatedCourses);
      return true;
    } catch (error) {
      console.error('删除课程失败:', error);
      return false;
    }
  }

  /**
   * Update custom course
   * @param courseId Course ID to update
   * @param updatedCourse Updated course data
   * @returns true if successful
   */
  async updateCourse(courseId: string, updatedCourse: Course): Promise<boolean> {
    try {
      const courses = await this.getCustomCourses();
      const courseIndex = courses.findIndex(course => course.courseId === courseId);
      
      if (courseIndex === -1) {
        throw new Error('课程不存在');
      }

      // 检查更新后的课程是否与其他课程时间冲突
      const otherCourses = courses.filter((_, index) => index !== courseIndex);
      if (this.checkTimeConflict(updatedCourse, otherCourses)) {
        throw new Error('课程时间冲突');
      }

      courses[courseIndex] = updatedCourse;
      await this.storageService.setObject(CustomCourseService.CUSTOM_COURSES_KEY, courses);
      return true;
    } catch (error) {
      console.error('更新课程失败:', error);
      return false;
    }
  }

  /**
   * Get all custom courses
   * @returns Array of custom courses
   */
  async getCustomCourses(): Promise<Course[]> {
    try {
      const courses = await this.storageService.getObject(CustomCourseService.CUSTOM_COURSES_KEY) as Course[];
      return courses || [];
    } catch (error) {
      console.error('获取自定义课程失败:', error);
      return [];
    }
  }

  /**
   * Check if course times conflict with existing courses
   * @param newCourse New course to check
   * @param existingCourses Existing courses to check against
   * @returns true if conflict exists
   */
  private checkTimeConflict(newCourse: Course, existingCourses: Course[]): boolean {
    for (const existingCourse of existingCourses) {
      // 检查每个时间段
      for (const newTime of newCourse.times || []) {
        for (const existingTime of existingCourse.times || []) {
          // 如果在同一天
          if (newTime.weekDay === existingTime.weekDay) {
            const newStart = this.timeToMinutes(newTime.getStartTime());
            const newEnd = this.timeToMinutes(newTime.getEndTime());
            const existingStart = this.timeToMinutes(existingTime.getStartTime());
            const existingEnd = this.timeToMinutes(existingTime.getEndTime());
            
            // 检查时间段是否重叠
            if (newStart < existingEnd && newEnd > existingStart) {
              // 检查周次是否重叠
              const conflictingWeeks = (newCourse.availableWeeks || [])
                .filter(week => (existingCourse.availableWeeks || []).includes(week));
              
              if (conflictingWeeks.length > 0) {
                return true;
              }
            }
          }
        }
      }
    }
    return false;
  }

  /**
   * Convert time string to minutes
   * @param time Time string in "HH:mm" format
   * @returns Minutes from 00:00
   */
  private timeToMinutes(time: string): number {
    const [hours, minutes] = time.split(':').map(Number);
    return hours * 60 + minutes;
  }

  /**
   * Create a new custom course
   * @param courseName Course name
   * @param teacherName Teacher name
   * @param roomName Room name
   * @param weeks Available weeks
   * @param times Course times
   * @param courseType Course type
   * @param credits Credits
   * @param description Course description
   * @returns Created course
   */
  createCustomCourse(
    courseName: string,
    teacherName: string,
    roomName: string,
    weeks: number[],
    times: CourseTime[],
    courseType: CourseType = CourseType.CUSTOM,
    credits: number = 0,
    description: string = ''
  ): Course {
    const course = new Course(
      `custom_${new Date().getTime()}`,
      courseName,
      teacherName,
      roomName,
      '',
      courseType,
      credits,
      description
    );
    course.availableWeeks = weeks;
    course.times = times;
    course.teacherNames = [teacherName];
    return course;
  }
}
