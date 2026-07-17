@Entry
@Component
struct YanZM {
  @State time: number = 0

  build() {
    Column() {
      this.titleBuilder()
      TextInput({ placeholder: '请输入手机号' })
        .textInputExtend()
      Divider()
      Row() {
        TextInput({ placeholder: '请输入验证码' })
          .textInputExtend()
          .layoutWeight(1)
        Text(this.time == 0 ? '发送验证码' : `${this.time}秒后获取`)
          .fontSize(14)
          .fontColor(Color.Gray)
          .onClick(() => {
            // 避免倒计时为 0 时，重复点击
            if (this.time != 0) {
              return
            }
            setTimeout(() => {
              AlertDialog.show({
                message: Math.floor(1000 + 9000 * Math.random())
                  .toString()
              })
            }, 2000)
            this.time = 60
            const timeId = setInterval(() => {
              this.time--
              // 倒计时结束，清空定时器
              if (this.time == 0) {
                clearInterval(timeId)
              }
            }, 1000)
          })
      }
      .width('100%')

      Divider()

      Button('登录')
        .width('100%')
        .type(ButtonType.Normal)
        .backgroundColor('#ea6051')
        .margin({ top: 50 })
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

@Extend(TextInput)
function textInputExtend() {
  .backgroundColor(Color.White)
  .padding({ left: 0, top: 20, bottom: 20 })
  .placeholderColor('#ccc')
}