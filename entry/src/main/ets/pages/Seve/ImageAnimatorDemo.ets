@Entry
@Component
struct ImageAnimatorDemo {
  dogImages: ImageFrameInfo[] = [
    { src: $r("app.media.loading_dog_0") },
    { src: $r("app.media.loading_dog_1") },
    { src: $r("app.media.loading_dog_2") },
    { src: $r("app.media.loading_dog_3") }
  ]
  @State dogState: AnimationStatus = AnimationStatus.Initial
  catImages: ImageFrameInfo[] = [
    { src: $r("app.media.cat1") },
    { src: $r("app.media.cat2") },
    { src: $r("app.media.cat3") },
    { src: $r("app.media.cat4") },
    { src: $r("app.media.cat5") }
  ]
  @State catState: AnimationStatus = AnimationStatus.Initial

  build() {
    Column({ space: 20 }) {
      ImageAnimator()
        .dogStyle()
        .images(this.dogImages)
        .duration(this.dogImages.length * 100)
        .state(this.dogState)
        .iterations(-1)

      Row({ space: 20 }) {
        Button('启动').onClick(() => {
          this.dogState = AnimationStatus.Running
        })
        Button('暂停').onClick(() => {
          this.dogState = AnimationStatus.Paused
        })
        Button('停止').onClick(() => {
          this.dogState = AnimationStatus.Stopped
        })
      }

      Divider().color('#ccc')

      ImageAnimator()
        .catStyle()
        .images(this.catImages)
        .duration(this.catImages.length * 200)
        .state(this.catState)
        .iterations(-1)

      Row({ space: 20 }) {
        Button('启动').onClick(() => {
          this.catState = AnimationStatus.Running
        })
        Button('暂停').onClick(() => {
          this.catState = AnimationStatus.Paused
        })
        Button('停止').onClick(() => {
          this.catState = AnimationStatus.Stopped
        })
      }
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor('#f5f5f5')
  }

  @Styles
  dogStyle() {
    .width(300)
    .aspectRatio(2)
    .padding(10)
    .borderRadius(10)
  }

  @Styles
  catStyle() {
    .width('80%')
    .height(200)
    .borderRadius(10)
    .backgroundColor('#fff')
    .shadow({ radius: 10, color: '#33000000', offsetY: 5 })
  }
}