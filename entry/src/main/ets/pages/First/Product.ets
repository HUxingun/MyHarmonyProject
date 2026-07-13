@Entry
@Component
struct Product{
  build() {
    Row() {
      Image($r('app.media.product1'))
        .width(80)
        .height(80)
        .borderRadius(8)
        .objectFit(ImageFit.Cover)
        .margin({ right: 12 })
      Column() {
        Text('750ml奥利奥酸奶水果捞')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .fontColor('#1A1A1A')
          .lineHeight(22)
          .width('100%')
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
        Text('手工秘制原味')
          .fontSize(13)
          .fontColor('#666666')
          .lineHeight(20)
          .width('100%')
          .margin({ top: 4 })
        Text('x1')
          .fontSize(12)
          .fontColor('#999999')
          .lineHeight(18)
          .width('100%')
          .margin({ top: 2 })
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
      .height('100%')
      .justifyContent(FlexAlign.Center)
      Text('¥36.8')
        .fontSize(18)
        .fontWeight(FontWeight.Bold)
        .fontColor('#FF2442')
        .margin({ left: 12 })
    }
    .width('100%')
    .height(100)
    .padding({ left: 16, right: 16 })
    .backgroundColor('#FFF')
    .borderRadius(8)
  }
}