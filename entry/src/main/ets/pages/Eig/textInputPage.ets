@Entry
@Component
struct TextInputPage {
  @State username: string = ''
  @State password: string = ''
  @State info: string = ''

  build() {
    Column() {
      TextInput({ placeholder: '输入用户名', text: $$this.username })
        .type(InputType.Normal)
        .backgroundColor(Color.Transparent)
        .borderRadius(0)
        .height(60)
        .border({
          width: { bottom: 1 },
          color: '#ccc'
        })

      TextInput({ placeholder: '请输入密码', text: $$this.password })
        .type(InputType.Password)
        .height(60)
        .backgroundColor(Color.Transparent)
        .borderRadius(0)
        .border({
          width: { bottom: 1 },
          color: '#ccc'
        })
        .passwordIcon({
          onIconSrc: $r('app.media.ic_eyes_open'),
          offIconSrc: $r('app.media.ic_eyes_close')
        })

      Row({ space: 20 }) {
        Button('清空输入内容')
          .onClick(() => {
            this.username = ''
            this.password = ''
          })

        Button('获取输入内容')
          .onClick(() => {
            AlertDialog.show({
              message: `用户名:${this.username},密码:${this.password}`
            })
          })
      }
      .margin({ top: 10 })

      TextArea({ placeholder: '请输入内容', text: $$this.info })
        .maxLength(300)
        .showCounter(true)
        .height(150)

      Row({ space: 20 }) {
        Button('清空输入内容')
          .onClick(() => {
            this.info = ''
          })

        Button('获取输入内容')
          .onClick(() => {
            AlertDialog.show({
              message: this.info
            })
          })
      }
      .margin({ top: 10 })
    }
    .padding(20)
  }
}