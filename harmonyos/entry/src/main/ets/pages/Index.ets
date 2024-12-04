import router from '@ohos.router';
import { CommonConstants } from '../common/constants/CommonConstants';

@Entry
@Component
struct Index {
  @State currentIndex: number = 0;
  private tabsController: TabsController = new TabsController();

  @Builder TabBuilder(title: string, index: number, normalImage: Resource, selectedImage: Resource) {
    Column() {
      Image(this.currentIndex === index ? selectedImage : normalImage)
        .width(24)
        .height(24)
      Text(title)
        .fontSize(10)
        .fontColor(this.currentIndex === index ? '#1698CE' : '#6B6B6B')
        .margin({ top: 4 })
    }
    .width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.currentIndex = index;
      this.tabsController.changeIndex(index);
    })
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
        TabContent() {
          Column() {
            Text('首页')
              .fontSize(20)
              .fontWeight(FontWeight.Bold)
          }
          .width('100%')
          .height('100%')
          .backgroundColor('#F1F3F5')
        }
        .tabBar(this.TabBuilder('首页', 0, $r('app.media.home'), $r('app.media.home_selected')))

        TabContent() {
          Column() {
            Text('课程')
              .fontSize(20)
              .fontWeight(FontWeight.Bold)
            
            List() {
              ListItem() {
                Text('我的课程')
                  .fontSize(16)
                  .padding(15)
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/CoursePage' });
                  })
              }
              
              ListItem() {
                Text('课表查询')
                  .fontSize(16)
                  .padding(15)
                  .onClick(() => {
                    // TODO: 实现课表查询功能
                  })
              }
            }
            .width('100%')
            .height('100%')
            .backgroundColor('#F1F3F5')
          }
        }
        .tabBar(this.TabBuilder('课程', 1, $r('app.media.course'), $r('app.media.course_selected')))

        TabContent() {
          Column() {
            Text('我的')
              .fontSize(20)
              .fontWeight(FontWeight.Bold)
          }
          .width('100%')
          .height('100%')
          .backgroundColor('#F1F3F5')
        }
        .tabBar(this.TabBuilder('我的', 2, $r('app.media.profile'), $r('app.media.profile_selected')))
      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.White)
    }
  }
}
