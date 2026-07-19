import { router } from '@kit.ArkUI'

export class MovieInfo {
  id: number = 0
}

@Entry
@Component
struct HomePage {
  build() {
    Stack() {
      Image($r('app.media.douban_home'))
        .width('100%')
        .height('100%')
        .objectFit(ImageFit.Cover)
      /*
      Button('电影详情')
        .translate({ x: -120 })
        .onClick(() => {
          router.pushUrl({url:"pages/Nin/MoviePage"},
            router.RouterMode.Single
          )
        })
      */

      // 参数传递
      Row({ space: 10 }) {
        Button('热辣滚烫')
          .onClick(() => {
            router.pushUrl({
              url: "pages/Nin/Params",
              params: { id: 36081094 }
            })
          })
        Button('第二十条')
          .onClick(() => {
            router.pushUrl({
              url: "pages/Nin/Params",
              params: { id: 36208094 }
            })
          })
        Button('飞驰人生2')
          .onClick(() => {
            router.pushUrl({
              url: "pages/Nin/Params",
              params: { id: 36369452 }
            })
          })
      }
      .translate({ x: -10 })
    }
    .height('100%')
  }
}