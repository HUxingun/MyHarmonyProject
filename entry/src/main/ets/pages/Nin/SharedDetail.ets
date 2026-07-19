import { router } from '@kit.ArkUI'

@Entry
@Component
struct SharedDetail {
  build() {
    Column() {
      Row() {
        Image($r('app.media.ic_public_arrow_left'))
          .width(24)
          .height(24)
          .onClick(() => {
            router.back()
          })
        Text('商品详情')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .padding(15)
      .backgroundColor(Color.White)


      Image('https://qna.smzdm.com/202404/01/660a60fac2f4c6567.jpg_e680.jpg')
        .width('100%')
        .height(300)
        .objectFit(ImageFit.Cover)
        .sharedTransition('car_image', { duration: 500, curve: Curve.EaseInOut })

      Text('小米创世版第二轮开售，一分钟秒没，我劝大家荔枝一点')
        .fontSize(18)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffffff')
  }
}