import { router } from '@kit.ArkUI';

@Entry
@Component
struct Params {
  @State imgUrl: ResourceStr = $r('app.media.params_movie1');

  aboutToAppear(): void {
    const params = router.getParams() as Record<string, number>
    const id = params?.id

    if (id === 36081094) {
      this.imgUrl = $r('app.media.params_movie1')
    } else if (id === 36208094) {
      this.imgUrl = $r('app.media.params_movie2')
    } else if (id === 36369452) {
      this.imgUrl = $r('app.media.params_movie3')
    }
  }

  build() {
    Row() {
      Image(this.imgUrl)
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
    }
    .height('100%')
  }
}