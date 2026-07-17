@Component
struct SonCom {
  @Prop info: string

  build() {
    Button('info:' + this.info)
      .onClick(() => {
        this.info = '子组件内容'
      })
  }
}

@Entry
@Component
struct FatherCom {
  @State info: string = '内容'

  build() {
    Column() {
      Text(this.info)
        .onClick(() => {
          this.info = '父组件内容'
        })
      SonCom({
        info: this.info,

      })
    }
    .padding(20)
    .backgroundColor(Color.Orange)
  }
}