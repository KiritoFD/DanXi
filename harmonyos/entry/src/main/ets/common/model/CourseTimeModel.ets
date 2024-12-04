/**
 * Course time model class
 */

/**
 * Course time class
 * Represents a specific time slot for a course
 */
export class CourseTime {
  // Monday is 0, Morning lesson is 0
  weekDay: number;
  slot: number;

  constructor(weekDay: number, slot: number) {
    this.weekDay = weekDay;
    this.slot = slot;
  }

  /**
   * Get the start time of this course time slot
   * @returns Start time in "HH:mm" format
   */
  getStartTime(): string {
    const timeMap = {
      0: '08:00',
      1: '08:55',
      2: '09:55',
      3: '10:50',
      4: '11:45',
      5: '13:30',
      6: '14:25',
      7: '15:25',
      8: '16:20',
      9: '17:15',
      10: '18:30',
      11: '19:25',
      12: '20:20'
    };
    return timeMap[this.slot] || '00:00';
  }

  /**
   * Get the end time of this course time slot
   * @returns End time in "HH:mm" format
   */
  getEndTime(): string {
    const timeMap = {
      0: '08:45',
      1: '09:40',
      2: '10:40',
      3: '11:35',
      4: '12:30',
      5: '14:15',
      6: '15:10',
      7: '16:10',
      8: '17:05',
      9: '18:00',
      10: '19:15',
      11: '20:10',
      12: '21:05'
    };
    return timeMap[this.slot] || '00:00';
  }

  /**
   * Get the weekday name
   * @returns Weekday name in Chinese
   */
  getWeekDayName(): string {
    const weekDayMap = {
      0: '周一',
      1: '周二',
      2: '周三',
      3: '周四',
      4: '周五',
      5: '周六',
      6: '周日'
    };
    return weekDayMap[this.weekDay] || '未知';
  }

  /**
   * Convert to formatted time string
   * @returns Formatted time string (e.g. "周一 08:00-08:45")
   */
  toString(): string {
    return `${this.getWeekDayName()} ${this.getStartTime()}-${this.getEndTime()}`;
  }

  /**
   * Convert to JSON object
   * @returns JSON object
   */
  toJSON(): object {
    return {
      weekDay: this.weekDay,
      slot: this.slot
    };
  }
}
