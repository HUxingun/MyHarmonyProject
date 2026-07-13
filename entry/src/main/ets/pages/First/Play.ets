@Entry
@Component
struct Play {
  build() {
    Column() {
      Row() {
        Column({ space: 8}) {
          Text('玩一玩')
            .fontColor('#141519')
            .fontSize(18)
            .fontWeight(700)
          Row() {
            Text('签到兑礼')
              .fontColor('#a4a4b0')
              .fontSize(12)
              .fontWeight(600)
            Text(' | 超多大奖 超好玩')
              .fontColor('#a4a4b0')
              .fontSize(13)
          }
        }
        .layoutWeight(1)
        .alignItems(HorizontalAlign.Start)
        Row({ space: 15}) {
          Image($r('app.media.du'))
            .width(50)
            .backgroundColor('#efefef')
            .borderRadius(5)
          Image($r('app.media.ic_public_arrow_right'))
            .width(20)
            .fillColor('#aeaeba')
        }
      }
      .width('100%')
      .height(80)
      .backgroundColor('#fff')
      .borderRadius(5)
      .padding({left: 20, right: 12})
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f5f4f9')
    .padding(10)
  }
}