/**
 * Course grid component
 */
import { Course } from '../common/model/CourseModel';
import { TimeTable, Event, TableDisplayType } from '../common/model/TimeTableModel';
import { CourseCard } from './CourseCard';
import { Colors, Sizes, Animations, Typography } from '../common/styles/CourseTableStyles';

@Component
export struct CourseGrid {
  @Link timeTable: TimeTable;
  @Prop currentWeek: number;
  @State displayType: TableDisplayType = TableDisplayType.STANDARD;
  @State scrollOffset: number = 0;
  
  // 时间表头
  private timeHeaders = [
    { slots: '1-2', time: '08:00\n09:40' },
    { slots: '3-4', time: '09:55\n11:35' },
    { slots: '5', time: '11:45\n12:30' },
    { slots: '6-7', time: '13:30\n15:10' },
    { slots: '8-9', time: '15:25\n17:05' },
    { slots: '10', time: '17:15\n18:00' },
    { slots: '11-12', time: '18:30\n20:10' },
    { slots: '13', time: '20:20\n21:05' }
  ];

  // 星期表头
  private weekHeaders = ['周一', '周二', '周三', '周四', '周五', '周六', '周日'];

  build() {
    Column() {
      // 工具栏
      Row() {
        Text(`第${this.currentWeek}周`)
          .fontSize(Typography.titleNormal.fontSize)
          .fontWeight(Typography.titleNormal.fontWeight)
          .opacity(Typography.titleNormal.opacity)
        
        Blank()
        
        Row() {
          Toggle({ type: ToggleType.Switch, isOn: this.displayType === TableDisplayType.FULL })
            .selectedColor(Colors.primary)
            .switchPointColor(Colors.white)
            .onChange((isOn: boolean) => {
              animateTo({ duration: Animations.durationNormal }, () => {
                this.displayType = isOn ? TableDisplayType.FULL : TableDisplayType.STANDARD;
              })
            })
          Text('显示全部')
            .fontSize(Typography.bodyNormal.fontSize)
            .opacity(Typography.bodyNormal.opacity)
            .margin({ left: Sizes.spacingNormal })
        }
      }
      .width('100%')
      .padding(Sizes.spacingLarge)
      .backgroundColor(Colors.white)
      .shadow({
        radius: Sizes.shadowRadius,
        color: Sizes.shadowColor,
        offsetX: Sizes.shadowOffsetX,
        offsetY: Sizes.shadowOffsetY
      })

      // 课程表网格
      Grid() {
        // 左侧时间表头
        ForEach(this.timeHeaders, (header, index) => {
          GridItem() {
            Column() {
              Text(header.slots + '节')
                .fontSize(Typography.caption.fontSize)
                .opacity(Typography.caption.opacity)
                .margin({ bottom: Sizes.spacingTiny })
              Text(header.time)
                .fontSize(Typography.caption.fontSize)
                .opacity(Typography.caption.opacity)
                .textAlign(TextAlign.Center)
            }
            .width('100%')
            .height('100%')
            .justifyContent(FlexAlign.Center)
            .backgroundColor(this.scrollOffset > 0 ? Colors.white : Colors.grayLight)
            .animation({
              duration: Animations.durationNormal,
              curve: Animations.curveDefault
            })
          }
          .rowStart(index + 1)
          .rowEnd(index + 2)
        })

        // 顶部星期表头
        ForEach(this.weekHeaders, (header, index) => {
          GridItem() {
            Text(header)
              .fontSize(Typography.bodyNormal.fontSize)
              .fontWeight(Typography.bodyNormal.fontWeight)
              .opacity(Typography.bodyNormal.opacity)
              .textAlign(TextAlign.Center)
          }
          .columnStart(index + 1)
          .columnEnd(index + 2)
          .backgroundColor(Colors.white)
          .shadow({
            radius: this.scrollOffset > 0 ? Sizes.shadowRadius : 0,
            color: Sizes.shadowColor,
            offsetX: Sizes.shadowOffsetX,
            offsetY: Sizes.shadowOffsetY
          })
          .animation({
            duration: Animations.durationNormal,
            curve: Animations.curveDefault
          })
        })

        // 课程卡片
        ForEach(this.timeTable.toDayEvents(this.currentWeek, this.displayType), 
          (dayEvents: Event[], dayIndex: number) => {
          ForEach(dayEvents, (event: Event) => {
            GridItem() {
              CourseCard({ course: event.course, time: event.time })
            }
            .columnStart(dayIndex + 1)
            .columnEnd(dayIndex + 2)
            .rowStart(this.getSlotIndex(event.time.slot) + 1)
            .rowEnd(this.getSlotIndex(event.time.slot) + 2)
          })
        })
      }
      .columnsTemplate('48px 1fr 1fr 1fr 1fr 1fr 1fr 1fr')
      .rowsTemplate('48px repeat(8, 120px)')
      .width('100%')
      .height('100%')
      .backgroundColor(Colors.white)
      .padding(Sizes.borderWidth)
      .onScroll((offsetY: number) => {
        this.scrollOffset = offsetY;
      })
    }
    .width('100%')
    .height('100%')
  }

  /**
   * Convert course slot to grid row index
   * @param slot Course slot number
   * @returns Grid row index
   */
  private getSlotIndex(slot: number): number {
    // 将课程节次映射到网格行索引
    const slotMap = {
      0: 0, // 1节
      1: 0, // 2节
      2: 1, // 3节
      3: 1, // 4节
      4: 2, // 5节
      5: 3, // 6节
      6: 3, // 7节
      7: 4, // 8节
      8: 4, // 9节
      9: 5, // 10节
      10: 6, // 11节
      11: 6, // 12节
      12: 7  // 13节
    };
    return slotMap[slot] || 0;
  }
}
