@Entry
@Component
struct Center {
  build() {
    Row() {
      Image($r('app.media.arrow_left'))
        .width(24)
        .height(24)
        .objectFit(ImageFit.Contain)

      Text('个人中心')
        .fontSize(18)
        .fontWeight(FontWeight.Bold)
        .fontColor('#1A1A1A')
        .layoutWeight(1)   //权重
        .textAlign(TextAlign.Center)

      Image($r('app.media.more_icon'))
        .width(24)
        .height(24)
        .objectFit(ImageFit.Contain)
    }
    .width('100%')
    .height(56)
    .padding({ left: 16, right: 16 })
    .backgroundColor('#FFF')
  }
}