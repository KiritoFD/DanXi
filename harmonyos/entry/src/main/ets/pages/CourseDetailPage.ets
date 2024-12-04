import router from '@ohos.router';
import { Course } from '../common/service/CourseService';
import promptAction from '@ohos.promptAction';
import calendar from '@ohos.calendar';

@Entry
@Component
struct CourseDetailPage {
  @State course: Course = router.getParams()?.['course'] as Course;

  async addToCalendar() {
    try {
      let eventInfo = {
        title: this.course.name,
        description: `课程：${this.course.name}\n教师：${this.course.teacher}`,
        startTime: this.parseTime(this.course.time)[0],
        endTime: this.parseTime(this.course.time)[1],
        location: this.course.location
      };

      let calendarEvent = await calendar.addEvent(eventInfo);
      promptAction.showToast({ 
        message: '课程已成功添加到日历', 
        duration: 2000 
      });
    } catch (error) {
      promptAction.showToast({ 
        message: '添加到日历失败：' + error, 
        duration: 2000 
      });
    }
  }

  parseTime(timeStr: string): [number, number] {
    // 假设时间格式为 "周一 10:00-12:00"
    const timeMatch = timeStr.match(/(\d+):(\d+)-(\d+):(\d+)/);
    if (timeMatch) {
      const startHour = parseInt(timeMatch[1]);
      const startMinute = parseInt(timeMatch[2]);
      const endHour = parseInt(timeMatch[3]);
      const endMinute = parseInt(timeMatch[4]);

      const now = new Date();
      const startTime = new Date(now.getFullYear(), now.getMonth(), now.getDate(), startHour, startMinute).getTime();
      const endTime = new Date(now.getFullYear(), now.getMonth(), now.getDate(), endHour, endMinute).getTime();

      return [startTime, endTime];
    }
    
    // 如果解析失败，返回当前时间
    const now = new Date();
    return [now.getTime(), now.getTime() + 3600000]; // 默认1小时
  }

  build() {
    Column() {
      // 导航栏
      Row() {
        Image($r('app.media.back'))
          .width(24)
          .height(24)
          .margin({ right: 10 })
          .onClick(() => {
            router.back();
          })
        
        Text('课程详情')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
      .padding(15)
      .backgroundColor(Color.White)
      .alignItems(VerticalAlign.Center)

      // 课程基本信息
      Column() {
        Text(this.course.name)
          .fontSize(22)
          .fontWeight(FontWeight.Bold)
          .margin({ bottom: 10 })
        
        Row() {
          Text('教师：')
            .fontSize(16)
            .fontColor(Color.Gray)
          Text(this.course.teacher)
            .fontSize(16)
        }
        .width('100%')
        .margin({ bottom: 10 })

        Row() {
          Text('时间：')
            .fontSize(16)
            .fontColor(Color.Gray)
          Text(this.course.time)
            .fontSize(16)
        }
        .width('100%')
        .margin({ bottom: 10 })

        Row() {
          Text('地点：')
            .fontSize(16)
            .fontColor(Color.Gray)
          Text(this.course.location)
            .fontSize(16)
        }
        .width('100%')
      }
      .width('100%')
      .padding(15)
      .backgroundColor(Color.White)
      .margin({ top: 10 })

      // 更多操作
      Column() {
        Button('添加到日历')
          .width('100%')
          .margin({ bottom: 10 })
          .onClick(() => {
            this.addToCalendar();
          })
        
        Button('查看课件')
          .width('100%')
          .margin({ bottom: 10 })
          .onClick(() => {
            // TODO: 实现查看课件功能
          })
      }
      .width('100%')
      .padding(15)
      .margin({ top: 10 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F1F3F5')
  }
}
