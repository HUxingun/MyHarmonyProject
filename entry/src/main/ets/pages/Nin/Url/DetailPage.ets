import { router } from '@kit.ArkUI'

@Entry
@Component
struct DetailPage {
  build() {
    Row() {
      Column() {
        Text('详情页')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('返回')
          .onClick(() => {
            router.back()
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}