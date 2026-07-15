@Entry
@Component
struct JingDong_Scroller {
  scroller: Scroller = new Scroller()
  @State isShowRocket: boolean = false

  build() {
    Stack({ alignContent: Alignment.TopStart }) {
      Scroll(this.scroller) {
        Column() {
          Image($r('app.media.ic_jd_scroll_01'))
            .width('100%')
          Image($r('app.media.ic_jd_scroll_02'))
            .width('100%')
          Image($r('app.media.ic_jd_scroll_03'))
            .width('100%')
        }
        .width('100%')
        .linearGradient({
          colors: [['#0094ff', 0], [Color.Orange, 1]],
        })
      }
      .width('100%')
      .height('100%')
      .scrollBarColor(Color.Pink)
      .scrollBarWidth(10)
      .scrollBar(BarState.Auto)
      .edgeEffect(EdgeEffect.Spring)
      .onScroll(() => {
        const y = this.scroller.currentOffset().yOffset
        if (y > 300) {
          this.isShowRocket = true
        } else {
          this.isShowRocket = false
        }
      })

      Image($r('app.media.ic_jd_rocket'))
        .width(40)
        .height(40)
        .backgroundColor(Color.White)
        .borderRadius(20)
        .shadow({ radius: 10, color: '#33000000', offsetY: 5 })
        .position({ x: '80%', y: '80%' })
        .offset({ x: -20, y: -20 })
        .visibility(this.isShowRocket ? Visibility.Visible : Visibility.Hidden)
        .onClick(() => {
          this.scroller.scrollEdge(Edge.Top)
        })

      Button('获取滚动距离')
        .position({ x: 20, y: 100 })
        .height(40)
        .width(120)
        .fontSize(14)
        .onClick(() => {
          const x = this.scroller.currentOffset().xOffset
          const y = this.scroller.currentOffset().yOffset
          AlertDialog.show({
            message: `x: ${x}, y: ${y}`
          })
        })
    }
    .width('100%')
    .height('100%')
  }
}