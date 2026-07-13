@Entry
@Component
struct flydog_moco {
  build() {
    Column() {
      Column() {
        Image($r('app.media.moco'))
          .width('100%')
          .aspectRatio(0.8)
          .borderRadius(8)
        Row({space:10}){
          Image($r('app.media.ic_device_earphone_roc_filled'))
            .width(20)
            .backgroundColor('#0cbff9')
            .padding(3)
            .borderRadius(10)
            .fillColor('#fff')
          Text('飞狗MOCO').fontSize(16)
            .fontColor('#4b3635')
            .fontWeight(600)
        }.width('100%')
        .padding(5)
        .alignItems(VerticalAlign.Top)
        Text('VIP')
          .width(34)
          .height(18)
          .backgroundColor('#f3912e')
          .borderRadius({topLeft:8,bottomRight:8})
          .position({x:0,y:0}) //定位
          .fontColor('#ffe788')
          .border({width:2,color:'#ffe7a0'})
          .textAlign(TextAlign.Center)
          .fontWeight(700)
          .fontStyle(FontStyle.Italic)
          .fontSize(12)
      }.width('45%')
    }.padding(10)
  }
}
