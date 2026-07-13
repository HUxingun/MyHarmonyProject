@Entry
@Component
struct qqCard {
  build() {
    Column() {
      Column() {
        Text('我的年度歌手榜')
          .fontColor('#bdbdbd')
          .fontSize(16)
          .lineHeight(35)
        Text('周杰伦')
          .fontSize(26)
          .fontWeight(700)
          .lineHeight(50)
        Image($r('app.media.zhoujielun'))
          .width(100)
        Text('真爱就是循环一千遍')
          .fontSize(16)
          .fontColor('#999')
          .lineHeight(40)
      }.width(240)
      .height(240)
        .margin({top:15})
        .backgroundColor('#fff')
    }
    .backgroundColor('#f5f7f6')
    .height('100%')
    .width('100%')
  }
}