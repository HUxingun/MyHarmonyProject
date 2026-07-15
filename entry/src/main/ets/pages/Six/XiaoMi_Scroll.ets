@Entry
@Component
struct XiaoMi_Scroll {
  scroller: Scroller = new Scroller()
  build() {
    Column(){
      Scroll(this.scroller) {
        Column() {
          Image($r('app.media.ic_xiaomi_scroll_01'))
          Image($r('app.media.ic_xiaomi_scroll_02'))
          Image($r('app.media.ic_xiaomi_scroll_03'))

          Row(){
            Button('返回顶部')
              .onClick(()=>{
                this.scroller.scrollEdge(Edge.Top)//回到顶部
              })
            Button('获取滚动距离')
              .onClick(()=>{//返回偏移量
                const x = this.scroller.currentOffset().xOffset
                const y = this.scroller.currentOffset().yOffset
                AlertDialog.show({
                  message:`x:${x},y:${y}`
                })
              })
          }
        }
        .width('100%')
      }
      .width('100%')
      .height('100%')
      .scrollBarColor(Color.Orange)
      .scrollBarWidth(20)
      .scrollBar(BarState.On) // 滚动条
      .edgeEffect(EdgeEffect.Spring) // 回弹效果
    }.width('100%')
  }
}