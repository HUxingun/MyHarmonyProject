import MainPage from './MainPage'
import CategoryPage from './CategoryPage'
import ActivePage from './ActivePage'
import CartPage from './CartPage'
import MinePage from './MinePage'

@Entry
@Component
struct TabMain {
  @State selectedIndex: number = 0

  build() {
    Column() {
      Tabs() {
        // 1. 首页
        TabContent() {
          MainPage()
        }
        .tabBar(
          this.tabBarBuilder($r('app.media.mjyp_tabbar_icon_0'), '首页', 0, $r('app.media.mjyp_tabbar_icon_0_selected'))
        )

        // 2. 分类
        TabContent() {
          CategoryPage()
        }
        .tabBar(
          this.tabBarBuilder($r('app.media.mjyp_tabbar_icon_1'), '分类', 1, $r('app.media.mjyp_tabbar_icon_1_selected'))
        )

        // 3. 活动（中间特殊凸起按钮）
        TabContent() {
          ActivePage()
        }
        .tabBar(this.centerTabBarBuilder($r('app.media.startIcon'), 2))

        // 4. 购物车
        TabContent() {
          CartPage()
        }
        .tabBar(
          this.tabBarBuilder($r('app.media.mjyp_tabbar_icon_2'), '购物车', 3,
            $r('app.media.mjyp_tabbar_icon_2_selected'))
        )

        // 5. 我的
        TabContent() {
          MinePage()
        }
        .tabBar(
          this.tabBarBuilder($r('app.media.mjyp_tabbar_icon_3'), '我的', 4, $r('app.media.mjyp_tabbar_icon_3_selected'))
        )
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
      .margin({ bottom: 10 })
  }
}