import { BaseService } from './BaseService';
import { AuthService } from './AuthService';
import { HttpService } from './HttpService';
import { StorageService } from './StorageService';
import { Course, CourseType } from '../model/CourseModel';
import { TimeTable } from '../model/TimeTableModel';

/**
 * Course service class
 * Handles course data retrieval and caching
 */
@Observed
export class CourseService extends BaseService {
  private static instance: CourseService;
  private authService: AuthService;
  private httpService: HttpService;
  private storageService: StorageService;

  private constructor() {
    super();
    this.authService = AuthService.getInstance();
    this.httpService = HttpService.getInstance();
    this.storageService = StorageService.getInstance();
  }

  /**
   * Get singleton instance
   * @returns CourseService instance
   */
  static getInstance(): CourseService {
    if (!CourseService.instance) {
      CourseService.instance = new CourseService();
    }
    return CourseService.instance;
  }

  // 本科生课表API
  private static readonly UG_LOGIN_URL = 'https://uis.fudan.edu.cn/authserver/login?service=http%3A%2F%2Fjwfw.fudan.edu.cn%2Feams%2Flogin.action';
  private static readonly UG_ID_URL = 'https://jwfw.fudan.edu.cn/eams/courseTableForStd.action';
  private static readonly UG_TIME_TABLE_URL = 'https://jwfw.fudan.edu.cn/eams/courseTableForStd!courseTable.action';
  private static readonly UG_HOST = 'https://jwfw.fudan.edu.cn/eams/';

  // 研究生课表API
  private static readonly PG_TIME_TABLE_URL = 'http://yjsxk.fudan.edu.cn/yjsxkapp/sys/xsxkappfudan/xsxkCourse/loadKbxx.do?_=';
  private static readonly PG_HOMEPAGE_URL = 'http://yjsxk.fudan.edu.cn/yjsxkapp/sys/xsxkappfudan/*default/index.do';
  private static readonly PG_GET_TOKEN_URL = 'http://yjsxk.fudan.edu.cn/yjsxkapp/sys/xsxkappfudan/login/4/vcode.do?';
  private static readonly PG_GET_CAPTCHA_URL = 'http://yjsxk.fudan.edu.cn/yjsxkapp/sys/xsxkappfudan/login/vcode/image.do?vtoken=';
  private static readonly PG_LOGIN_URL = 'http://yjsxk.fudan.edu.cn/yjsxkapp/sys/xsxkappfudan/login/check/login.do?';

  // 缓存相关常量
  private static readonly TIMETABLE_CACHE_KEY = 'timetable';
  private static readonly TIMETABLE_LAST_UPDATED_KEY = 'timetable_last_updated';
  private static readonly SEMESTER_ID_KEY = 'semester_id';
  private static readonly SEMESTER_START_DATE_KEY = 'semester_start_date';

  /**
   * Get time table
   * @param forceLoadFromRemote Force load from remote
   * @returns TimeTable object
   */
  async getTimeTable(forceLoadFromRemote: boolean = false): Promise<TimeTable> {
    try {
      // 如果不是强制从远程加载且有缓存，则返回缓存数据
      if (!forceLoadFromRemote) {
        const cachedTimeTable = await this.getCachedTimeTable();
        if (cachedTimeTable) {
          return cachedTimeTable;
        }
      }

      // 获取用户信息
      const userInfo = await this.authService.getUserInfo();
      const isPostgraduate = userInfo.userType === 'POSTGRADUATE';

      let timeTable: TimeTable;
      if (isPostgraduate) {
        // 研究生课表
        const token = await this.getPGToken();
        const response = await this.httpService.get(
          CourseService.PG_TIME_TABLE_URL + new Date().getTime(),
          {
            needAuth: true,
            headers: {
              'Authorization': token
            }
          }
        );
        timeTable = TimeTable.fromPGJson(
          await this.getSemesterStartDate(),
          response
        );
      } else {
        // 本科生课表
        const idResponse = await this.httpService.get(CourseService.UG_ID_URL, {
          needAuth: true
        });
        const termId = this.getTermId(idResponse);

        const tableResponse = await this.httpService.post(CourseService.UG_TIME_TABLE_URL, {
          data: {
            'ignoreHead': '1',
            'setting.kind': 'std',
            'startWeek': '1',
            'ids': termId,
            'semester.id': await this.getCurrentSemesterId()
          },
          needAuth: true,
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
          }
        });
        timeTable = TimeTable.fromHtml(
          await this.getSemesterStartDate(),
          tableResponse
        );
      }

      // 缓存课程表数据
      await this.cacheTimeTable(timeTable);
      
      return timeTable;
    } catch (error) {
      console.error('获取课程表失败:', error);
      // 如果远程获取失败，尝试返回缓存数据
      const cachedTimeTable = await this.getCachedTimeTable();
      if (cachedTimeTable) {
        return cachedTimeTable;
      }
      throw error;
    }
  }

  /**
   * Get cached time table
   * @returns TimeTable object or null if no cache
   */
  private async getCachedTimeTable(): Promise<TimeTable | null> {
    try {
      const cachedData = await this.storageService?.getObject(CourseService.TIMETABLE_CACHE_KEY);
      if (cachedData) {
        const startDate = new Date(cachedData.startDate);
        const courses = cachedData.courses.map(courseData => {
          const course = new Course(
            courseData.courseId,
            courseData.courseName,
            courseData.teacherNames[0],
            courseData.roomName,
            '',
            courseData.courseType,
            courseData.credits,
            courseData.description
          );
          course.teacherIds = courseData.teacherIds;
          course.teacherNames = courseData.teacherNames;
          course.roomId = courseData.roomId;
          course.availableWeeks = courseData.availableWeeks;
          course.times = courseData.times;
          return course;
        });
        return new TimeTable(startDate, courses);
      }
    } catch (error) {
      console.error('读取缓存课程表失败:', error);
    }
    return null;
  }

  /**
   * Cache time table
   * @param timeTable TimeTable object to cache
   */
  private async cacheTimeTable(timeTable: TimeTable): Promise<void> {
    try {
      await this.storageService?.setObject(CourseService.TIMETABLE_CACHE_KEY, timeTable);
      await this.storageService?.setObject(CourseService.TIMETABLE_LAST_UPDATED_KEY, new Date().toISOString());
    } catch (error) {
      console.error('缓存课程表失败:', error);
    }
  }

  /**
   * Get semester start date
   * @returns Semester start date
   */
  private async getSemesterStartDate(): Promise<Date> {
    try {
      const startDateStr = await this.storageService?.getString(CourseService.SEMESTER_START_DATE_KEY);
      if (startDateStr) {
        const startDate = new Date(startDateStr);
        if (!isNaN(startDate.getTime())) {
          return startDate;
        }
      }
    } catch (error) {
      console.error('获取学期开始日期失败:', error);
    }
    // 默认返回2024年春季学期开始日期
    return new Date(2024, 1, 26);
  }

  /**
   * Get current semester ID
   * @returns Semester ID
   */
  private async getCurrentSemesterId(): Promise<string> {
    try {
      const semesterId = await this.storageService?.getString(CourseService.SEMESTER_ID_KEY);
      if (semesterId) {
        return semesterId;
      }
    } catch (error) {
      console.error('获取学期ID失败:', error);
    }
    // 默认返回2023-2024学年春季学期
    return '2024-2025-2';
  }

  /**
   * Get postgraduate system token
   * @returns Token string
   */
  private async getPGToken(): Promise<string> {
    const tokenResponse = await this.httpService.get(CourseService.PG_GET_TOKEN_URL);
    const tokenData = JSON.parse(tokenResponse);
    return tokenData.data.token;
  }

  /**
   * Get term ID from HTML response
   * @param html HTML response
   * @returns Term ID
   */
  private getTermId(html: string): string {
    const match = html.match(/bg.form.addInput\(form,"ids","([0-9]+)"\)/);
    if (match && match[1]) {
      return match[1];
    }
    throw new Error('无法获取课程表ID');
  }

  /**
   * Get last update time
   * @returns Last update time
   */
  async getTimeTableLastUpdated(): Promise<Date | null> {
    try {
      const lastUpdatedStr = await this.storageService?.getString(CourseService.TIMETABLE_LAST_UPDATED_KEY);
      if (lastUpdatedStr) {
        return new Date(lastUpdatedStr);
      }
    } catch (error) {
      console.error('获取课程表最后更新时间失败:', error);
    }
    return null;
  }

  /**
   * Clear time table cache
   */
  async clearTimeTableCache(): Promise<void> {
    try {
      await this.storageService?.remove(CourseService.TIMETABLE_CACHE_KEY);
      await this.storageService?.remove(CourseService.TIMETABLE_LAST_UPDATED_KEY);
    } catch (error) {
      console.error('清除课程表缓存失败:', error);
    }
  }

  /**
   * Set semester start date
   * @param date Start date
   */
  async setSemesterStartDate(date: Date): Promise<void> {
    try {
      await this.storageService?.setString(CourseService.SEMESTER_START_DATE_KEY, date.toISOString());
      // 清除缓存，强制重新加载
      await this.clearTimeTableCache();
    } catch (error) {
      console.error('设置学期开始日期失败:', error);
    }
  }

  /**
   * Set semester ID
   * @param semesterId Semester ID
   */
  async setSemesterId(semesterId: string): Promise<void> {
    try {
      await this.storageService?.setString(CourseService.SEMESTER_ID_KEY, semesterId);
      // 清除缓存，强制重新加载
      await this.clearTimeTableCache();
    } catch (error) {
      console.error('设置学期ID失败:', error);
    }
  }
}
