@Entry
@Component
struct SheetDemo {
  @State isShow: boolean = false

  @Builder
  myBuilder() {
    Column({ space: 20 }) {
      Stack({ alignContent: Alignment.End }) {
        Text('分享给好友')
          .width('100%')
          .textAlign(TextAlign.Center)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)

        Image($r('app.media.ic_public_cancel'))
          .width(25)
          .fillColor('#c0c0c0')
          .onClick(() => {
            this.isShow = false
          })
      }
      .width('100%')

      Row({ space: 20 }) {
        this.itemBuilder($r('app.media.ic_share_wechat'), '微信')
        this.itemBuilder($r('app.media.ic_share_pyq'), '朋友圈')
        this.itemBuilder($r('app.media.ic_share_sina'), '微博')
        this.itemBuilder($r('app.media.ic_share_url'), '复制链接')
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)
    }
    .padding(15)
  }

  @Builder
  itemBuilder(src: ResourceStr, title: string) {
    Column({ space: 6 }) {
      Image(src)
        .width(50)
        .height(50)
        .borderRadius(10)
      Text(title)
        .fontSize(14)
        .fontColor('#666666')
    }
  }

  build() {
    Column() {
      Text(`半模态`)
        .fontSize(16)
        .margin({ bottom: 20 })

      Button('分享')
        .width(160)
        .height(44)
        .type(ButtonType.Capsule)
        .backgroundColor('#007DFF')
        .onClick(() => {
          this.isShow = true
        })
        .bindSheet($$this.isShow, this.myBuilder(), {
          showClose: false,
          height: 260,
          backgroundColor: Color.White
        })
    }
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
    .backgroundColor('#f5f5f5')
  }
}