@Entry
@Component
struct ScrollableDemo {
  build() {
    Column({ space: 10 }) {
      Text('竖向滚动')
        .fontSize(20)
      Scroll() {
        Column() {}
        .height(1000)
        .width('100%')
        .linearGradient({
          colors: [['#0094ff', 0], [Color.Orange, 1]],
        })
      }
      .scrollBarColor(Color.Pink)
      .scrollBarWidth(50)
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .width('100%')
      .height(200)
      .border({ width: 1, color: Color.Orange })
      //分割线
      Divider().color(Color.Gray).width('100%')

      Text('横向滚动')
        .fontSize(20)

      Scroll() {
        Row() {}
        .height('100%')
        .width(1000)
        .linearGradient({
          angle: 90,
          colors: [['#0094ff', 0], [Color.Orange, 1]],
        })
      }
      .scrollable(ScrollDirection.Horizontal)
      .width('100%')
      .height(200)
      .border({ width: 1, color: Color.Orange })
      .edgeEffect(EdgeEffect.Spring)
    }
    .width('100%')
    .height('100%')
  }
}