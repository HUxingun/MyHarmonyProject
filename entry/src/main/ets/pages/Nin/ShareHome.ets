import { router } from '@kit.ArkUI'

@Entry
@Component
struct SharedHome {
  build() {
    Column({ space: 20 }) {
      Text('共享元素转场')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)

      Image('https://qna.smzdm.com/202404/01/660a60fac2f4c6567.jpg_e680.jpg')
        .width(150)
        .height(150)
        .borderRadius(12)
        .sharedTransition('car_image', { duration: 500, curve: Curve.EaseInOut })
        .onClick(() => {
          router.pushUrl({
            url: 'pages/Nin/SharedDetail'
          })
        })

    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor('#f5f5f5')
  }
}