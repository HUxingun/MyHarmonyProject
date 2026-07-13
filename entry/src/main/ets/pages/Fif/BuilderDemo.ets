@Builder
function navItem(icon: Resource, text: string) {
  Column({ space: 10 }) {
    Image(icon)
      .width('80%')
    Text(text)
  }
  .width('25%')
  .onClick(() => {
    AlertDialog.show({
      message: '点了 ' + text
    })
  })
}

@Entry
@Component
struct BuilderDemo {
  build() {
    Column({ space: 20 }) {
      Text('@Builder 案例')
        .fontSize(30)

      Row() {
        navItem($r('app.media.ic_reuse_01'), '阿里拍卖')
        navItem($r('app.media.ic_reuse_02'), '菜鸟')
        navItem($r('app.media.ic_reuse_03'), '芭芭农场')
        navItem($r('app.media.ic_reuse_04'), '阿里药房')
      }
      .width('100%')
    }
    .width('100%')
    .height('100%')
  }
}