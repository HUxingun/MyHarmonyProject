import { router } from '@kit.ArkUI'

@Entry
@Component
struct ActorPage {
  aboutToAppear(): void {
    console.log("路由长度",router.getLength())
  }
  build() {
    Stack() {
      Image($r("app.media.douban_actor"))
      Button('电影')
        .translate({ x: 43, y: 80 })
        .onClick(() => {
          router.pushUrl({ url: "pages/Nin/HomePage" },
            router.RouterMode.Single)
        })
    }
    .height('100%')
  }
}