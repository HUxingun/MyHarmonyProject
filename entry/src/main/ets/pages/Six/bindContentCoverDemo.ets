@Entry
@Component
struct ModalTransitionExample {
  @State isShow: boolean = false
  
  @Builder
  myBuilder() {
    Column() {
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#0094ff')
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Column() {
      Button(`显示全屏模态${this.isShow}`)
        .fontSize(20)
        .margin(10)
        // 绑定并控制显示
        .bindContentCover(this.isShow, this.myBuilder())
        .onClick(() => {
          this.isShow = true
        })
    }
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
  }
}