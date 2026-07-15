@Entry
@Component
struct TabsDemo {
  @State selectedIndex: number = 0

  build() {
    Column() {
      Text(this.selectedIndex + '')
      Tabs() {
        TabContent() {
          Text('首页')
        }
        .tabBar(this.tabBarBuilder($r('app.media.ic_tabbar_icon_2'), '首页', 0, $r('app.media.ic_tabbar_icon_2_selected')))

        TabContent() {
          Text('搜索')
        }
        .tabBar(this.tabBarBuilder($r('app.media.ic_tabbar_icon_3'), '探索', 1, $r('app.media.ic_tabbar_icon_3_selected')))
      }
      .barPosition(BarPosition.End)
      .scrollable(true)
      .layoutWeight(1)
      .onChange((index: number) => {
        this.selectedIndex = index
      })
    }
  }

  @Builder
  tabBarBuilder(img: ResourceStr, text: string, index: number, selectedImg: ResourceStr) {
    Column() {
      Image(this.selectedIndex == index ? selectedImg : img)
        .width(30)
      Text(text)
        .fontColor(this.selectedIndex == index ? Color.Red : Color.Black)
    }
  }
}