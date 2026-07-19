import { router } from '@kit.ArkUI'
import { initCartData } from '../model/GoodsModel'
import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct LoginPage {
  @State account: string = ''
  @State password: string = ''
  @State isAgree: boolean = false

  aboutToAppear(): void {
    initCartData()
  }

  build() {
    Column() {
      this.TopSectionBuilder()

      Column() {
        Image($r('app.media.ic_xiaomi_logo'))
          .width(50)
          .margin({ top: 20 })

        Stack() {
          Column({ space: 20 }) {
            TextInput({ placeholder: '小米账号/手机号/邮箱', text: $$this.account })
              .placeholderColor('#ccc')
              .backgroundColor(Color.Transparent)
              .border({ width: { bottom: .5 }, color: '#ccc' })
              .padding(0)
              .height(48)

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
            .onClick(() => {
              if (this.account.trim().length === 0) {
                promptAction.showToast({ message: '请输入账号', duration: 1500 })
                return
              }
              if (this.password.trim().length === 0) {
                promptAction.showToast({ message: '请输入密码', duration: 1500 })
                return
              }
              if (this.password.length < 6) {
                promptAction.showToast({ message: '密码不能少于6位', duration: 1500 })
                return
              }
              if (!this.isAgree) {
                promptAction.showToast({ message: '请先同意用户协议', duration: 1500 })
                return
              }
              router.replaceUrl({ url: 'pages/TabMain' })
            })

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

      Column({ space: 20 }) {
        Row() {
          Checkbox()
            .shape(CheckBoxShape.CIRCLE)
            .selectedColor('#af8756')
            .select(this.isAgree)
            .onChange((val: boolean) => {
              this.isAgree = val
            })

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
    .width('100%')
    .height('100%')
    .linearGradient({
      angle: 180,
      colors: [['#fef9f0', 0], ['#f5e6d3', 0.35], ['#fdf8f0', 0.7], ['#faf5eb', 1]]
    })
  }

  @Builder
  TopSectionBuilder() {
    Row() {
      Image($r('app.media.ic_public_arrow_left'))
        .width(24)
        .height(24)
      Image($r('app.media.ic_public_question'))
        .width(24)
        .height(24)
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
