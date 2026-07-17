@Entry
@Component
struct AniMationDemo2 {
  @State animate: boolean = false;
  @State translateY: number = 1
  @State bgColor: ResourceColor = Color.Pink
  @State fontColor: ResourceColor = '#0094ff'
  @State fontWeight: number = 100
  @State angle: number = 0

  build() {
    Column() {
      Text('itheima')
        .width(100)
        .height(100)
        .fontColor(this.fontColor)
        .fontWeight(this.fontWeight)
        .backgroundColor(this.bgColor)
        .textAlign(TextAlign.Center)
        .translate({ y: this.translateY })
        .rotate({ angle: this.angle })
        .opacity(1)

      // 改变位置
      Button('改变位置')
        .onClick(() => {
          animateTo({}, () => {
            this.angle += 10
          })
        })

      Button('切换动画')
        .onClick(() => {
          this.animate = !this.animate
          animateTo({
            duration: 500,
            curve: Curve.Ease, // 动画曲线
            // delay: 2000,
            // iterations: -1,
            playMode: PlayMode.Alternate,
            onFinish: () => {
              console.log('onFinish 执行啦')
            }
          }, () => {
            this.bgColor = !this.animate ? Color.Pink : '#0094ff'
            this.translateY = !this.animate ? 1 : 100
            this.fontColor = !this.animate ? '#0094ff' : Color.Pink
            this.fontWeight = !this.animate ? 100 : 900
            this.angle = !this.animate ? 0 : 135
          })
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.SpaceAround)
  }
}