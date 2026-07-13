import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State message: string = '你好，鸿蒙';

  build() {
    Column() {
      Text(this.message)
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)

      Button("点击跳转")
        .width('90%')
        .margin({ top: 20 })
        .onClick(() => {
          router.pushUrl({
            url: "pages/Second",
            params: {
              message: this.message
            }
          })
        })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}