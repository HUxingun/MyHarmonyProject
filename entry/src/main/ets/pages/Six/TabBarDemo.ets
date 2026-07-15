@Entry
@Component
struct TabBarDemo {
  @State selectedIndex: number = 0

  build() {
    Column() {
      Tabs() {
        TabContent() {
          this.contentImg()
        }
        .tabBar(
          this.tabBarBuilder($r('app.media.ic_tabbar_icon_0'), '首页', 0, $r('app.media.ic_tabbar_icon_0_selected')))

        TabContent() {
          Text('分类')
        }
        .tabBar(
          this.tabBarBuilder($r('app.media.ic_tabbar_icon_1'), '分类', 1, $r('app.media.ic_tabbar_icon_1_selected')))

        TabContent() {
          Text('活动')
        }
        .tabBar(this.centerTabBarBuilder($r('app.media.startIcon'), 2))

        TabContent() {
          Text('购物车')
        }
        .tabBar(
          this.tabBarBuilder($r('app.media.ic_tabbar_icon_2'), '购物车', 3, $r('app.media.ic_tabbar_icon_2_selected')))

        TabContent() {
          Text('我的')
        }
        .tabBar(
          this.tabBarBuilder($r('app.media.ic_tabbar_icon_3'), '我的', 4, $r('app.media.ic_tabbar_icon_3_selected')))
      }
      .barPosition(BarPosition.End)
      .scrollable(false)
      .layoutWeight(1)
      .onChange((index: number) => {
        this.selectedIndex = index
      })
    }
    .width('100%')
    .height('100%')
  }

  @Builder
  contentImg() {
    Scroll() {
      Column() {
        Image($r('app.media.ic_xiaomi_scroll_01'))
          .width('100%')
        Image($r('app.media.ic_xiaomi_scroll_02'))
          .width('100%')
        Image($r('app.media.ic_xiaomi_scroll_03'))
          .width('100%')
      }
      .width('100%')
    }
  }

  @Builder
  tabBarBuilder(img: ResourceStr, text: string, index: number, selectedImg: ResourceStr) {
    Column() {
      Image(this.selectedIndex == index ? selectedImg : img)
        .width(30)
      Text(text)
        .fontColor(this.selectedIndex == index ? '#eebf7e' : Color.Black)
        .fontSize(12)
    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
    .width('100%')
  }

  @Builder
  centerTabBarBuilder(img: ResourceStr, index: number) {
    Image(img)
      .width(50)
      .height(50)
  }
}