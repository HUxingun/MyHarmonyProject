@Entry
@Component
struct ArkUI {
  private readonly IMAGE_PATHS: Array<Resource> = [
    $r("app.media.girl1"),
    $r("app.media.girl2"),
    $r("app.media.girl3"),
    $r("app.media.girl4"),
    $r("app.media.girl5"),
    $r("app.media.girl6"),
    $r("app.media.girl7"),
    $r("app.media.girl8"),
    $r("app.media.girl9")
  ]
  private readonly PHOTO_WIDTH = 340
  private readonly PHOTO_HEIGHT = 508
  private readonly PHOTO_MARGIN_LEFT = 10
  @State private currentPhotoIndex: number = 0

  build() {
    Stack({ alignContent: Alignment.Start }) {
      Image(this.IMAGE_PATHS[this.currentPhotoIndex % this.IMAGE_PATHS.length])
        .objectFit(ImageFit.Fill)
        .width(this.PHOTO_WIDTH)
        .height(this.PHOTO_HEIGHT)
        .margin({ left: this.PHOTO_MARGIN_LEFT })
        .shadow({ radius: 50, color: Color.Black, offsetX: 15, offsetY: 15 })
        .onClick(() => {
          animateTo({
            curve: Curve.EaseInOut
          }, () => {
            this.currentPhotoIndex++;
          })
        })
    }
    .width('100%')
    .height('100%')
  }
}