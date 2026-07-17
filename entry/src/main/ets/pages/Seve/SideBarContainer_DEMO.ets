@Entry
@Component
struct SideBarContainer_DEMO {
  @State showSideBar: boolean = false

  build() {
    SideBarContainer(SideBarContainerType.Overlay) {
      Column() {
        Image($r('app.media.ic_douban_side'))
          .width('100%')
          .height('100%')
          .objectFit(ImageFit.Cover)
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#80000000')

      Column() {
        Image($r('app.media.ic_douban_main'))
          .width('100%')
          .height('100%')
          .objectFit(ImageFit.Contain)

        Button('打开/关闭 侧边栏')
          .margin({ top: 20 })
          .onClick(() => {
            this.showSideBar = !this.showSideBar
          })
      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Center)
    }
    .showSideBar(this.showSideBar)
    .minSideBarWidth(278)
    .maxSideBarWidth(278)
    .autoHide(true)
    .sideBarPosition(SideBarPosition.Start)
  }
}