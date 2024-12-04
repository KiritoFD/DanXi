/**
 * Course table page
 */
import { CourseService } from '../common/service/CourseService';
import { CalendarService } from '../common/service/CalendarService';
import { CustomCourseService } from '../common/service/CustomCourseService';
import { TimeTable } from '../common/model/TimeTableModel';
import { CourseGrid } from '../components/CourseGrid';
import promptAction from '@ohos.promptAction';

@Entry
@Component
struct CourseTablePage {
  @State timeTable: TimeTable = new TimeTable();
  @State currentWeek: number = 1;
  @State isLoading: boolean = true;
  @State isRefreshing: boolean = false;

  private courseService: CourseService = CourseService.getInstance();
  private calendarService: CalendarService = CalendarService.getInstance();
  private customCourseService: CustomCourseService = CustomCourseService.getInstance();

  aboutToAppear() {
    this.loadData();
  }

  async loadData() {
    try {
      // 获取课程表数据
      this.timeTable = await this.courseService.getTimeTable();
      
      // 获取自定义课程
      const customCourses = await this.customCourseService.getCustomCourses();
      this.timeTable.courses.push(...customCourses);

      // 计算当前周次
      this.currentWeek = this.calculateCurrentWeek();
    } catch (error) {
      console.error('加载课程表失败:', error);
      promptAction.showToast({
        message: '加载课程表失败，请检查网络连接',
        duration: 2000
      });
    } finally {
      this.isLoading = false;
      this.isRefreshing = false;
    }
  }

  calculateCurrentWeek(): number {
    const now = new Date();
    const diffTime = now.getTime() - this.timeTable.startDate.getTime();
    const diffWeeks = Math.floor(diffTime / (7 * 24 * 60 * 60 * 1000));
    return Math.min(Math.max(diffWeeks + 1, 1), 18); // 限制在1-18周
  }

  build() {
    Stack({ alignContent: Alignment.Center }) {
      if (this.isLoading) {
        LoadingProgress()
          .color('#2196F3')
          .width(24)
          .height(24)
      } else {
        Refresh({ refreshing: $$this.isRefreshing }) {
          Column() {
            // 顶部工具栏
            Row() {
              Button('导出到日历')
                .onClick(async () => {
                  try {
                    const count = await this.calendarService.exportToCalendar(this.timeTable);
                    promptAction.showToast({
                      message: `成功导出${count}个课程到日历`,
                      duration: 2000
                    });
                  } catch (error) {
                    console.error('导出到日历失败:', error);
                    promptAction.showToast({
                      message: '导出到日历失败',
                      duration: 2000
                    });
                  }
                })
              
              Blank()
              
              Button('添加课程')
                .onClick(() => {
                  // TODO: 实现添加自定义课程的对话框
                })
            }
            .width('100%')
            .padding(16)

            // 周次选择器
            Row() {
              Slider({
                min: 1,
                max: 18,
                step: 1,
                value: this.currentWeek
              })
                .layoutWeight(1)
                .onChange((value: number) => {
                  this.currentWeek = value;
                })
              Text(`第${this.currentWeek}周`)
                .fontSize(14)
                .margin({ left: 8 })
            }
            .width('100%')
            .padding({ left: 16, right: 16, bottom: 16 })

            // 课程表网格
            CourseGrid({
              timeTable: $timeTable,
              currentWeek: this.currentWeek
            })
          }
        }
        .onRefreshing(async () => {
          this.isRefreshing = true;
          await this.loadData();
        })
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f5f5f5')
  }
}
