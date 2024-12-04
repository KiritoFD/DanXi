import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import { Course } from '../common/model/CourseModel';
import { CourseService } from '../common/service/CourseService';
import { AuthService } from '../common/service/AuthService';

@Entry
@Component
struct CoursePage {
  @State courses: Course[] = [];
  @State isLoading: boolean = true;
  @State selectedSemester: string = '';
  private courseService: CourseService = CourseService.getInstance();
  private authService: AuthService = AuthService.getInstance();

  @Builder
  courseCard(course: Course) {
    Column() {
      Row() {
        Text(course.name)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
        Blank()
        Text(course.type)
          .fontSize(14)
          .fontColor(Color.Gray)
      }
      .width('100%')
      .padding({ bottom: 10 })

      Row() {
        Column() {
          Text(`教师：${course.teacher}`)
            .fontSize(14)
          Text(`时间：${course.time}`)
            .fontSize(14)
          Text(`地点：${course.location}`)
            .fontSize(14)
        }
        .alignItems(HorizontalAlign.Start)
        .layoutWeight(1)

        Column() {
          Text(`学分：${course.credit}`)
            .fontSize(14)
        }
      }
      .width('100%')
    }
    .backgroundColor(Color.White)
    .borderRadius(10)
    .padding(15)
    .margin({ bottom: 10 })
    .shadow({ radius: 5, color: '#10000000' })
  }

  async aboutToAppear() {
    try {
      this.isLoading = true;
      const userInfo = await this.authService.getUserInfo();
      this.selectedSemester = userInfo.currentSemester || '';
      this.courses = await this.courseService.getCurrentCourses();
    } catch (error) {
      promptAction.showToast({ 
        message: '获取课程失败，请检查网络',
        duration: 2000 
      });
    } finally {
      this.isLoading = false;
    }
  }

  build() {
    Column() {
      // 页面标题
      Row() {
        Text('我的课程')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
      .padding(15)
      .backgroundColor('#F1F3F4')

      // 学期选择器
      Row() {
        Text('当前学期：')
        TextInput({ text: this.selectedSemester })
          .width(100)
          .enabled(false)
      }
      .width('100%')
      .padding(10)

      // 加载指示器
      if (this.isLoading) {
        LoadingProgress()
          .color(Color.Blue)
          .width(50)
          .height(50)
      }

      // 课程列表
      List() {
        ForEach(this.courses, (course: Course) => {
          ListItem() {
            this.courseCard(course)
          }
        })
      }
      .width('100%')
      .padding(10)
      .backgroundColor('#F1F3F4')

      // 导出到日历按钮
      Button('导出到日历')
        .width('90%')
        .margin({ top: 20 })
        .onClick(async () => {
          const exportedCount = await this.courseService.exportToCalendar(this.courses);
          promptAction.showToast({
            message: `成功导出 ${exportedCount} 门课程到日历`,
            duration: 2000
          });
        })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F1F3F4')
  }
}
