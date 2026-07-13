@Entry
@Component
struct JingDong {
  @State logoRotation: number = 0;
  @State loginTextScale: number = 1.0;
  @State huaweiOffsetY: number = 0;
  @State wechatOffsetY: number = 0;
  @State weiboOffsetY: number = 0;
  @State qqOffsetY: number = 0;

  build() {
    Column() {
      Row() {
        Image($r('app.media.jd_cancel'))
          .width(20)
        Text('帮助')
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Image($r('app.media.jd_logo'))
        .width(250)
        .height(250)
        .rotate({ angle: this.logoRotation })
        .onTouch((event: TouchEvent) => {
          if (event.type === TouchType.Down) {
            animateTo({ duration: 600, curve: Curve.EaseOut }, () => {
              this.logoRotation = 360;
            });
          } else if (event.type === TouchType.Up || event.type === TouchType.Cancel) {
            animateTo({ duration: 400, curve: Curve.EaseOut }, () => {
              this.logoRotation = 0;
            });
          }
        })

      Row() {
        Text('国家/地址')
          .layoutWeight(1)
          .fontColor('#666')
        /*Text('中国(+86)')
          .margin({ right: 5 })
          .fontColor('#666')*/
        Image($r('app.media.jd_right'))
          .width(20)
          .fillColor('#666')
      }
      .width('100%')
      .height(40)
      .backgroundColor('#fff')
      .borderRadius(20)
      .padding({ left: 15, right: 10 })

      TextInput({
        placeholder: '请输入手机号                          中国(+86)'
      })
        .placeholderColor('#666')
        .height(40)
        .borderRadius(20)
        .backgroundColor('#fff')
        .margin({ top: 20 })

      Row() {
        Checkbox()
          .width(10)
          .margin({ top: 7 })
        Text() {
          Span('我已经阅读并同意')
          Span('《京东隐私政策》').fontColor('#3274f6')
          Span('《京东用户服务协议》').fontColor('#3274f6')
          Span('未注册的手机号将自动创建京东账号')
        }
        .fontSize(12)
        .fontColor('#666')
        .lineHeight(20)
      }
      .alignItems(VerticalAlign.Top)
      .margin({ top: 20 })

      Button() {
        Text('登录')
          .fontSize(16)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Bold)
          .scale({ x: this.loginTextScale, y: this.loginTextScale })
      }
      .width('100%')
      .height(45)
      .backgroundColor('#bf2838')
      .borderRadius(22)
      .margin({ top: 25 })
      .onTouch((event: TouchEvent) => {
        if (event.type === TouchType.Down) {
          animateTo({ duration: 150, curve: Curve.EaseOut }, () => {
            this.loginTextScale = 0.85;
          });
        } else if (event.type === TouchType.Up || event.type === TouchType.Cancel) {
          animateTo({ duration: 150, curve: Curve.EaseOut }, () => {
            this.loginTextScale = 1.0;
          });
        }
      })

      Row({ space: 25 }) {
        Text('新用户注册').fontSize(14).fontColor('#666')
        Text('账户密码登录').fontSize(14).fontColor('#666')
        Text('无法登录').fontSize(14).fontColor('#666')
      }
      .margin({ top: 15 })

      Blank()

      Column() {
        Text('其他登录方式')
          .fontColor('#666')
          .height(22)
          .fontSize(14)
          .margin({ bottom: 28 })
        Row() {
          Image($r('app.media.jd_huawei'))
            .width(34)
            .height(34)
            .translate({ y: this.huaweiOffsetY })
            .onTouch((event: TouchEvent) => {
              if (event.type === TouchType.Down) {
                animateTo({ duration: 200, curve: Curve.EaseOut }, () => {
                  this.huaweiOffsetY = -8;
                });
              } else if (event.type === TouchType.Up || event.type === TouchType.Cancel) {
                animateTo({ duration: 200, curve: Curve.EaseOut }, () => {
                  this.huaweiOffsetY = 0;
                });
              }
            })

          Image($r('app.media.jd_wechat'))
            .width(34)
            .height(34)
            .fillColor('#56a44a')
            .translate({ y: this.wechatOffsetY })
            .onTouch((event: TouchEvent) => {
              if (event.type === TouchType.Down) {
                animateTo({ duration: 200, curve: Curve.EaseOut }, () => {
                  this.wechatOffsetY = -8;
                });
              } else if (event.type === TouchType.Up || event.type === TouchType.Cancel) {
                animateTo({ duration: 200, curve: Curve.EaseOut }, () => {
                  this.wechatOffsetY = 0;
                });
              }
            })

          Image($r('app.media.jd_weibo'))
            .width(34)
            .height(34)
            .fillColor('#c8493b')
            .translate({ y: this.weiboOffsetY })
            .onTouch((event: TouchEvent) => {
              if (event.type === TouchType.Down) {
                animateTo({ duration: 200, curve: Curve.EaseOut }, () => {
                  this.weiboOffsetY = -8;
                });
              } else if (event.type === TouchType.Up || event.type === TouchType.Cancel) {
                animateTo({ duration: 200, curve: Curve.EaseOut }, () => {
                  this.weiboOffsetY = 0;
                });
              }
            })

          Image($r('app.media.jd_QQ'))
            .width(34)
            .height(34)
            .fillColor('#4ba0e8')
            .translate({ y: this.qqOffsetY })
            .onTouch((event: TouchEvent) => {
              if (event.type === TouchType.Down) {
                animateTo({ duration: 200, curve: Curve.EaseOut }, () => {
                  this.qqOffsetY = -8;
                });
              } else if (event.type === TouchType.Up || event.type === TouchType.Cancel) {
                animateTo({ duration: 200, curve: Curve.EaseOut }, () => {
                  this.qqOffsetY = 0;
                });
              }
            })
        }
        .width('100%')
        .margin({ bottom: 30 })
        .justifyContent(FlexAlign.SpaceAround)
      }
      .width('100%')
    }
    .padding(20)
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.jd_login_bg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}