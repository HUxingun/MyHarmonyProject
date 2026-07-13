@Entry
@Component
struct DengLu {
  build() {
    Column() {
        Image($r('app.media.1_user5'))
          .width(100)
          .margin({ bottom: 1 })
        Text('114514')
          .fontColor('#1A1A1')
          .fontSize(16)
          .lineHeight(35)
          .margin({ bottom: 20 })
        Button('QQ登录')
          .width('100%')
          .backgroundColor('#12B7F5')
        Button('微信登录')
          .width('100%')
          .backgroundColor('#07C160')
          .margin({top:10})
      }
      .padding(40)
  }
}