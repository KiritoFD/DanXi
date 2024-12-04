/**
 * Course card component
 */
import { Course } from '../common/model/CourseModel';
import { CourseTime } from '../common/model/CourseTimeModel';
import { Colors, Sizes, Animations, Typography } from '../common/styles/CourseTableStyles';

@Component
export struct CourseCard {
  @Prop course: Course;
  @Prop time: CourseTime;
  @State isExpanded: boolean = false;
  @State isPressed: boolean = false;

  // 根据课程ID生成固定的颜色索引
  private getColorIndex(): number {
    const hash = this.course.courseId.split('').reduce((acc, char) => {
      return char.charCodeAt(0) + ((acc << 5) - acc);
    }, 0);
    return Math.abs(hash) % Colors.courseCards.length;
  }

  build() {
    Column() {
      // 课程基本信息
      Row() {
        Column() {
          Text(this.course.courseName)
            .fontSize(Typography.titleSmall.fontSize)
            .fontWeight(Typography.titleSmall.fontWeight)
            .opacity(Typography.titleSmall.opacity)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(2)
          if (!this.isExpanded) {
            Text(this.course.roomName)
              .fontSize(Typography.caption.fontSize)
              .opacity(Typography.caption.opacity)
              .margin({ top: Sizes.spacingTiny })
          }
        }
        .layoutWeight(1)
        .alignItems(HorizontalAlign.Start)

        Image($r('app.media.ic_expand'))
          .width(20)
          .height(20)
          .rotate({ angle: this.isExpanded ? 180 : 0 })
          .fillColor(Colors.white)
          .opacity(0.8)
          .onClick(() => {
            animateTo({ duration: Animations.durationNormal }, () => {
              this.isExpanded = !this.isExpanded;
            })
          })
      }
      .width('100%')
      .padding(Sizes.spacingNormal)
      .backgroundColor(Colors.courseCards[this.getColorIndex()])
      .borderRadius(Sizes.radiusNormal)

      // 展开后显示详细信息
      if (this.isExpanded) {
        Column() {
          // 教室信息
          Row() {
            Image($r('app.media.ic_location'))
              .width(16)
              .height(16)
              .margin({ right: Sizes.spacingSmall })
              .fillColor(Colors.white)
              .opacity(0.8)
            Text(this.course.roomName)
              .fontSize(Typography.bodySmall.fontSize)
              .fontColor(Colors.white)
          }
          .margin({ top: Sizes.spacingNormal })
          .width('100%')

          // 教师信息
          Row() {
            Image($r('app.media.ic_teacher'))
              .width(16)
              .height(16)
              .margin({ right: Sizes.spacingSmall })
              .fillColor(Colors.white)
              .opacity(0.8)
            Text(this.course.teacherNames.join(', '))
              .fontSize(Typography.bodySmall.fontSize)
              .fontColor(Colors.white)
          }
          .margin({ top: Sizes.spacingNormal })
          .width('100%')

          // 课程类型和学分
          Row() {
            Image($r('app.media.ic_info'))
              .width(16)
              .height(16)
              .margin({ right: Sizes.spacingSmall })
              .fillColor(Colors.white)
              .opacity(0.8)
            Text(`${this.course.courseType} | ${this.course.credits}学分`)
              .fontSize(Typography.bodySmall.fontSize)
              .fontColor(Colors.white)
          }
          .margin({ top: Sizes.spacingNormal })
          .width('100%')

          // 时间信息
          Row() {
            Image($r('app.media.ic_time'))
              .width(16)
              .height(16)
              .margin({ right: Sizes.spacingSmall })
              .fillColor(Colors.white)
              .opacity(0.8)
            Text(`${this.time.toString()} | 第${this.course.availableWeeks?.join(',')}周`)
              .fontSize(Typography.bodySmall.fontSize)
              .fontColor(Colors.white)
          }
          .margin({ top: Sizes.spacingNormal })
          .width('100%')
        }
        .padding(Sizes.spacingNormal)
        .backgroundColor(Colors.courseCards[this.getColorIndex()])
        .opacity(0.95)
        .width('100%')
        .borderRadius(Sizes.radiusNormal)
        .animation(Animations.fadeIn)
      }
    }
    .width('100%')
    .height('100%')
    .margin(Sizes.spacingTiny)
    .borderRadius(Sizes.radiusNormal)
    .shadow(this.isPressed ? {
      radius: Sizes.shadowRadius / 2,
      color: Sizes.shadowColorDark,
      offsetX: Sizes.shadowOffsetX,
      offsetY: Sizes.shadowOffsetY / 2
    } : {
      radius: Sizes.shadowRadius,
      color: Sizes.shadowColor,
      offsetX: Sizes.shadowOffsetX,
      offsetY: Sizes.shadowOffsetY
    })
    .scale({ x: this.isPressed ? 0.98 : 1, y: this.isPressed ? 0.98 : 1 })
    .animation(Animations.scaleNormal)
    .gesture(
      LongPressGesture()
        .onAction(() => {
          this.isPressed = true;
          // TODO: 显示课程操作菜单
        })
        .onActionEnd(() => {
          this.isPressed = false;
        })
    )
    .onClick(() => {
      animateTo({ duration: Animations.durationNormal }, () => {
        this.isExpanded = !this.isExpanded;
      })
    })
  }
}
