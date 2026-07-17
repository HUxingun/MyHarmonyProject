@Entry
@Component
struct XMYP_Login {
  // 双向绑定输入框状态
  @State account: string = ''
  @State password: string = ''
  @State isAgree: boolean = false

  build() {
    Column() {
      // 1. 顶部导航栏
      this.TopSectionBuilder()

      // 2. 登录核心区域
      Column() {
        Image($r('app.media.ic_xiaomi_logo'))
          .width(50)

        Stack() {
          Column({ space: 20 }) {
            // 账号输入框
            TextInput({ placeholder: '小米账号/手机号/邮箱', text: $$this.account })
              .placeholderColor('#ccc')
              .backgroundColor(Color.Transparent)
              .border({ width: { bottom: .5 }, color: '#ccc' })
              .padding(0)
              .height(48)

            // 密码输入框（带显隐眼睛图标）
            TextInput({ placeholder: '密码', text: $$this.password })
              .placeholderColor('#ccc')
              .backgroundColor(Color.Transparent)
              .border({ width: { bottom: .5 }, color: '#ccc' })
              .padding(0)
              .height(48)
              .type(InputType.Password)
              .passwordIcon({
                offIconSrc: $r('app.media.ic_eyes_open'),
                onIconSrc: $r('app.media.ic_eyes_close'),
              })
          }
        }
        .margin({ top: 30 })

        // 功能按钮区域
        Column({ space: 15 }) {
          Row() {
            Text('忘记密码')
              .LinkTextExtends()
          }
          .width('100%')
          .justifyContent(FlexAlign.End)

          Button('登 录')
            .width('100%')
            .backgroundColor('#b6854e')
            .fontSize(14)
            .fontWeight(600)

          Row() {
            Text('立即注册')
              .LinkTextExtends()
            Text('短信登录')
              .LinkTextExtends()
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .margin({ top: 15 })
      }
      .margin({ top: 60 })

      Blank()

      // 3. 底部协议与第三方登录区域
      Column({ space: 20 }) {
        Row() {
          Checkbox()
            .shape(CheckBoxShape.CIRCLE)
            .selectedColor('#af8756')
            .select(this.isAgree)
            .onChange(val => this.isAgree = val)

          Text() {
            Span('已阅读并同意')
            Span('《用户协议》')
              .fontColor('#9cbce8')
            Span('《隐私协议》')
              .fontColor('#9cbce8')
              .translate({ x: -10 })
          }
          .fontSize(12)
          .fontColor('#acacac')
        }

        Stack() {
          Divider()
            .strokeWidth(.5)
          Text('其他登录方式')
            .fontSize(12)
            .fontColor(Color.Gray)
            .backgroundColor(Color.White)
            .padding({ left: 5, right: 5 })
        }
        .width('100%')

        Row({ space: 15 }) {
          Image($r('app.media.ic_applelogo'))
            .width(40)
          Image($r('app.media.ic_wechat'))
            .width(40)
        }
      }
    }
    .padding({
      top: 30,
      left: 30,
      right: 30,
      bottom: 50
    })
    .height('100%')
  }

  @Builder
  TopSectionBuilder() {
    Row() {
      Image($r('app.media.ic_public_arrow_left'))
        .width(24)
      Image($r('app.media.ic_public_question'))
        .width(24)
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }
}

@Extend(Text)
function LinkTextExtends() {
  .fontColor(Color.Gray)
  .fontSize(14)
}