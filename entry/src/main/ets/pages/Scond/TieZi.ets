@Entry
@Component
struct TieZi {
  @State scaleNum: number = 1
  @State transX: number = 0
  @State rotateVal: number = 0

  build() {
    Column() {
        Image($r('app.media.actor'))
          .width('85%')
          .objectFit(ImageFit.Contain)
          .borderRadius(16)
          .clip(true)
          .scale({ x: this.scaleNum, y: this.scaleNum })
          .animation({ duration: 150, curve: Curve.EaseOut })
          .gesture(
            LongPressGesture()
              .onAction(() => {
                this.scaleNum = 0.92
              })
              .onActionEnd(() => {
                this.scaleNum = 1
              })
          )
          .backgroundColor('#fff')
        Blank().height(16)
        Text('看到游本昌年轻时候，\n终于知道他为啥看见…')
          .fontSize(20)
          .fontColor('#222')
          .textAlign(TextAlign.Center)
          .width('100%')
          .backgroundColor('#fff')
        Blank().height(12)
        Row({ space: 8 }) {
          Image($r('app.media.yy_icon'))
            .width(32)
            .height(32)
            .borderRadius(13)
            .margin({ left:10, right: 5 })
            .translate({ x: this.transX })
            .animation({ duration: 300, curve: Curve.EaseInOut })
            .onClick(() => {
              this.transX = 30
              setTimeout(() => {
                this.transX = 0
              }, 300)
            })
          Text('娱小鱼')
            .fontSize(15)
            .fontColor('#666')
          Blank()
          Row({ space: 4 }) {
            Image($r('app.media.ic_eye'))
              .width(18)
              .fillColor('#888')
              .rotate({ angle: this.rotateVal })
              .animation({ duration: 400, curve: Curve.Ease })
              .onClick(() => {
                this.rotateVal += 360
              })
            Text('6万')
              .fontSize(14)
              .fontColor('#888')
          }
        }
        .width('85%')
        .alignItems(VerticalAlign.Center)
        .backgroundColor('#fff')
      }
      .width('100%')
      .height('100%')
      .padding(20)
    }
}