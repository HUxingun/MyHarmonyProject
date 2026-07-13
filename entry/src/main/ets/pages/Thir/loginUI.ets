@Entry
@Component
struct LoginUI {
  @State isAccountLogin: boolean = true

  build() {
    Stack() {
      Column() {
        Row() {
          Row({ space: 30 }) {
            Column({ space: 5 }) {
              Text('账号登录')
                .fontSize(16)
                .decoration({
                  type: this.isAccountLogin ? TextDecorationType.Underline : TextDecorationType.None,
                  color: '#0066FF'
                })
                .fontColor(this.isAccountLogin ? '#333' : '#999')
                .fontWeight(this.isAccountLogin ? FontWeight.Bold : FontWeight.Normal)
                .onClick(() => {
                  this.isAccountLogin = true
                })
                .padding({ bottom: 5 })
            }
            .alignItems(HorizontalAlign.Center)

            Column({ space: 5 }) {
              Text('短信登录')
                .fontSize(16)
                .decoration({
                  type: this.isAccountLogin ? TextDecorationType.None : TextDecorationType.Underline,
                  color: '#0066FF'
                })
                .fontColor(this.isAccountLogin ? '#999' : '#333')
                .fontWeight(this.isAccountLogin ? FontWeight.Normal : FontWeight.Bold)
                .onClick(() => {
                  this.isAccountLogin = false
                })
                .padding({ bottom: 5 })
            }
            .alignItems(HorizontalAlign.Center)
          }
          .layoutWeight(1)
          .justifyContent(FlexAlign.Center)

          Button('✕')
            .width(30)
            .height(30)
            .fontSize(16)
            .fontColor('#999')
            .backgroundColor(Color.Transparent)
        }
        .width('100%')
        .height(50)
        .padding({ left: 20, right: 20 })

        Divider()
          .color('#E5E5E5')

        if (this.isAccountLogin) {
          AccountLogin()
        } else {
          MessageLogin()
        }
      }
      .width('90%')
      .height('70%')
      .backgroundColor(Color.White)
      .borderRadius(12)
      .shadow({ radius: 30, color: '#00000040', offsetX: 0, offsetY: 10 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
  }
}

@Component
struct AccountLogin {
  @State account: string = ''
  @State password: string = ''
  @State isAgreementChecked: boolean = false

  build() {
    Column({ space: 15 }) {
      Blank().height(20)

      TextInput({ placeholder: '手机号/用户名/邮箱', text: this.account })
        .width('80%')
        .height(45)
        .fontSize(14)
        .backgroundColor('#F5F5F5')
        .borderRadius(4)
        .padding({ left: 12, right: 12 })
        .onChange((value: string) => {
          this.account = value
        })

      TextInput({ placeholder: '密码', text: this.password })
        .width('80%')
        .height(45)
        .fontSize(14)
        .backgroundColor('#F5F5F5')
        .borderRadius(4)
        .padding({ left: 12, right: 12 })
        .onChange((value: string) => {
          this.password = value
        })

      Row() {
        Blank()
        Text('忘记密码?')
          .fontSize(12)
          .fontColor(Color.Blue)
      }
      .width('80%')

      Button('登录')
        .width('80%')
        .height(45)
        .fontSize(16)
        .backgroundColor('#0066FF')
        .borderRadius(4)

      Row() {
        Checkbox()
          .select(this.isAgreementChecked)
          .selectedColor('#0066FF')
          .onChange((value: boolean) => {
            this.isAgreementChecked = value
          })

        Text('阅读并接受 ')
          .fontSize(12)
          .fontColor('#666')
        Text('百度用户协议')
          .fontSize(12)
          .fontColor('#0066FF')
          .decoration({ type: TextDecorationType.Underline })
        Text(' 和 ')
          .fontSize(12)
          .fontColor('#666')
        Text('隐私政策')
          .fontSize(12)
          .fontColor('#0066FF')
          .decoration({ type: TextDecorationType.Underline })
      }
      .width('80%')

      Blank()
    }
    .width('100%')
    .layoutWeight(1)
  }
}

@Component
struct MessageLogin {
  @State phoneNumber: string = ''
  @State verificationCode: string = ''
  @State isGetCode: boolean = false
  @State isAgreementChecked: boolean = false
  private countdown: number = 60

  build() {
    Column({ space: 15 }) {
      Blank().height(20)

      TextInput({ placeholder: '手机号', text: this.phoneNumber })
        .width('80%')
        .height(45)
        .fontSize(14)
        .type(InputType.PhoneNumber)
        .maxLength(11)
        .backgroundColor('#F5F5F5')
        .borderRadius(4)
        .padding({ left: 12, right: 12 })
        .onChange((value: string) => {
          this.phoneNumber = value
        })

      Row() {
        TextInput({ placeholder: '验证码', text: this.verificationCode })
          .height(45)
          .fontSize(14)
          .type(InputType.Number)
          .maxLength(6)
          .backgroundColor('#F5F5F5')
          .borderRadius(4)
          .padding({ left: 12, right: 12 })
          .layoutWeight(1)
          .onChange((value: string) => {
            this.verificationCode = value
          })

        Blank().width(10)

        Button(this.isGetCode ? `${this.countdown}s` : '获取验证码')
          .height(45)
          .fontSize(12)
          .fontColor(this.isGetCode ? '#999' : '#0066FF')
          .backgroundColor(Color.Transparent)
          .border({ width: 1, color: this.isGetCode ? '#E5E5E5' : '#0066FF' })
          .borderRadius(4)
          .enabled(!this.isGetCode)
      }
      .width('80%')
      Row() {
        Blank()
        Text('忘记密码?')
          .fontSize(12)
          .fontColor(Color.Blue)
      }
      .width('80%')
      Button('登录')
        .width('80%')
        .height(45)
        .fontSize(16)
        .backgroundColor('#0066FF')
        .borderRadius(4)

      Row() {
        Checkbox()
          .select(this.isAgreementChecked)
          .selectedColor('#0066FF')
          .onChange((value: boolean) => {
            this.isAgreementChecked = value
          })

        Text('阅读并接受 ')
          .fontSize(12)
          .fontColor('#666')
        Text('百度用户协议')
          .fontSize(12)
          .fontColor('#0066FF')
          .decoration({ type: TextDecorationType.Underline })
        Text(' 和 ')
          .fontSize(12)
          .fontColor('#666')
        Text('隐私政策')
          .fontSize(12)
          .fontColor('#0066FF')
          .decoration({ type: TextDecorationType.Underline })
      }
      .width('80%')

      Blank()
    }
    .width('100%')
    .layoutWeight(1)
  }
}