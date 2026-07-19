import router from '@ohos.router'

@Entry
@Component
struct Home {
  build() {
    Column({ space: 15 }) {
      Text('首页')
        .fontSize(40)
      Button('去详情页-pushUrl')
        .onClick(() => {
          router.pushUrl({
            //可返回
            url: 'pages/Nin/Url/DetailPage',
          })
        })
      Button('去详情页-replaceUrl')
        .onClick(() => {
          router.replaceUrl({
            //替代
            url: 'pages/Nin/Url/DetailPage',
          })
        })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}


