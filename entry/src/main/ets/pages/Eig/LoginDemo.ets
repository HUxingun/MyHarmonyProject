@Entry
@Component
struct LoginDemo {
  @State time: number = 0
  @State phone: string = ''
  @State code: string = ''

  build() {
    Column() {
      this.titleBuilder()
      TextInput({ placeholder: '请输入手机号', text: $$this.phone })
        .backgroundColor(Color.White)
        .padding({ left: 0, top: 20, bottom: 20 })
        .placeholderColor('#ccc')
      Divider()
      Row() {
        TextInput({ placeholder: '请输入验证码', text: $$this.code })
          .backgroundColor(Color.White)
          .padding({ left: 0, top: 20, bottom: 20 })
          .placeholderColor('#ccc')
          .layoutWeight(1)
        Text(this.time == 0 ? '发送验证码' : `${this.time}秒后获取`)
          .fontSize(14)
          .fontColor(this.time == 0 ? Color.Blue : Color.Gray)
          .onClick(() => {
            if (this.time != 0) {
              return
            }

            this.time = 60

            const timeId = setInterval(() => {
              this.time--
              if (this.time == 0) {
                clearInterval(timeId)
              }
            }, 1000)

            setTimeout(() => {
              const code = Math.floor(100000 + Math.random() * 900000)
              AlertDialog.show({
                message: code.toString()
              })
            }, 2000)
          })
      }
      .width('100%')

      Divider()
      Button('登录')
        .width('100%')
        .type(ButtonType.Normal)
        .backgroundColor('#ea6051')
        .margin({ top: 50 })
        .onClick(() => {
          const reg1 = /^(?:(?:\+|00)86)?1\d{10}$/
          const reg2 = /^\d{6}$/
          if (reg1.test(this.phone) == false) {
            AlertDialog.show({
              message: '手机号有误'
            })
            return
          }
          if (reg2.test(this.code) == false) {
            AlertDialog.show({
              message: '验证码有误'
            })
            return
          }
          AlertDialog.show({
            message: '登录成功'
          })
        })
    }
    .padding({ top: 80, left: 40, right: 40 })
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }

  @Builder
  titleBuilder() {
    Text('短信登录')
      .fontSize(25)
      .fontWeight(600)
      .margin({ bottom: 30 })
  }
}