import { router } from '@kit.ArkUI';

@Entry
@Component
struct Second {
  @State message: string = '这是第二个页面';

  aboutToAppear() {
    const params = router.getParams() as Record<string, string>;
    if (params && params.message) {
      this.message = params.message;
    }
  }

  build() {
    Column() {
      Text(this.message)
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          this.message = 'welcome';
        })
        .margin({ bottom: 20 })

      Button('返回首页')
        .width('50%')
        .onClick(() => { //返回按钮绑定onClick事件
          router.back();
        })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}