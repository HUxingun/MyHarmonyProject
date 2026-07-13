@Entry
@Component
struct Share {
  build() {
    Column() {
      Column({space: 10}) {
        Image($r('app.media.nick'))
          .width('100%')
          .aspectRatio(1) //宽高比
          .borderRadius({topLeft:5, topRight: 5})//只圆左上右上
        Text('今晚吃这个 | 每日艺术分享 No.43')
          .fontSize(14)
          .fontWeight(600)
          .fontColor('#414141')
          .lineHeight(22)
          .padding({left: 10, right: 10})
        Row() {
          Row({space: 5}){
            Image($r('app.media.user'))
              .width(15)
              .aspectRatio(1)
              .borderRadius(10)
            Text('插画师分享聚集地')
              .fontSize(10)
              .fontColor('#787a7d')
          }
          Row({ space: 5}){
            Image($r('app.media.like'))
              .width(10)
              .aspectRatio(1)
              .fillColor('#ff2442')
            Text('2300')
              .fontSize(10)
              .fontColor('#787a7d')
          }
        }
        .width('100%')
        .padding({left: 10, right: 10})
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width(200)
      .padding({bottom:10})
      .backgroundColor('#fff')
      .borderRadius(5)
      .alignItems(HorizontalAlign.Start)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f5f4f9')
    .padding(10)
  }
}