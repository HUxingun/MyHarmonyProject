import { router } from '@kit.ArkUI'

@Entry
@Component
struct StartPage {
  build() {
    Column() {
      Image($r('app.media.ic_xiaomi_logo'))
        .width(100)
        .height(100)
        .margin({ top: 60 })

      Text('欢迎您来到小米有品！')
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
        .fontColor('#4a3728')
        .margin({ top: 30 })

      Text('为了提供优质的购物体验，有品App需要联网。有品将在您主动创建收货地址时使用您的位置信息。有品将使用您的剪切板权限。您有权拒绝或取消授权。\n\n有品App需要使用小米账号，且小米账号需要联网，以便为您提供便捷的注册、登录服务，您有权拒绝或取消授权。\n\n在使用App之前，请您阅读并充分理解《小米有品用户协议》《隐私政策》《小米账号使用协议》和《小米账号隐私政策》。如您同意以上内容，请点击"同意"并开始使用我们的产品和服务。\n\n我们将严格遵守相关法律法规和隐私政策以保护您的个人信息，感谢您对小米有品的信任。')
        .fontSize(13)
        .fontColor('#6b5a4a')
        .lineHeight(22)
        .margin({ top: 20 })
        .textAlign(TextAlign.Start)
        .padding({ left: 30, right: 30 })
        .maxLines(15)
        .textOverflow({ overflow: TextOverflow.Ellipsis })

      Blank()

      Button('同意并继续')
        .width('80%')
        .height(48)
        .backgroundColor('#b6854e')
        .fontColor(Color.White)
        .fontSize(16)
        .fontWeight(FontWeight.Medium)
        .borderRadius(24)
        .shadow({ radius: 8, color: '#30b6854e', offsetY: 4 })
        .onClick(() => {
          router.pushUrl({ url: 'pages/LoginPage' })
        })

      Button('不同意')
        .width('80%')
        .height(44)
        .backgroundColor(Color.Transparent)
        .fontColor('#8b7355')
        .fontSize(14)
        .borderRadius(22)
        .border({ width: 1.5, color: '#b6854e' })
        .margin({ top: 12, bottom: 50 })
    }
    .width('100%')
    .height('100%')
    .linearGradient({
      angle: 180,
      colors: [['#fdf8f0', 0], ['#f5e6d3', 0.3], ['#faf5eb', 0.7], ['#f7efe0', 1]]
    })
    .alignItems(HorizontalAlign.Center)
  }
}
