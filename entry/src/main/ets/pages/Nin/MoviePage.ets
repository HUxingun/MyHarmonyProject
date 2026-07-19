import { router } from '@kit.ArkUI'

@Entry
@Component
struct MoviePage {
  private categoryId: string = ''

  aboutToAppear(): void {
    const params = router.getParams() as Record<string, string>
    if (params?.categoryId) {
      this.categoryId = params.categoryId
    }
  }

  build() {
    Stack() {
      Image($r("app.media.douban_movie"))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)

      Column() {
        Text(`当前分类: ${this.categoryId}`)
          .fontSize(24)
          .fontColor(Color.White)
          .margin({ bottom: 20 })

        Button('演员详情')
          .translate({ x: -35, y: 180 })
          .onClick(() => {
            router.pushUrl({
              url: "pages/Nin/ActorPage",
              params: {
                movieId: 'M2024'
              }
            }, router.RouterMode.Single)
          })

        Button('返回')
          .margin({ top: 20 })
          .onClick(() => {
            router.back()
          })
      }
    }
    .height('100%')
  }
}