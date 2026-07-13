@Entry
@Component
struct Class_Card {
  build() {
    Column() {
      Row() {
        Stack({ alignContent: Alignment.BottomStart }) {
          Image($r('app.media.course_bird'))
            .width(120)
            .height(120)
            .borderRadius(10)
          Text('8398人参与')
            .fontSize(13)
            .fontColor('#FFF')
            .padding({ left: 10, right: 10, top: 3, bottom: 3 })
            .margin({ bottom: 10, left: 18 })
        }

        Column() {
          Text('披风少年成长课(自主篇)')
            .fontSize(18)
            .fontWeight(FontWeight.Medium)
            .fontColor('#222222')
            .margin({ top:12 })

          Text('看自主学习亲子课，改掉坏习惯！')
            .fontSize(12)
            .margin({ top: 8, bottom: 50 })
            .fontColor('#888888')

          Row() {
            Row() {
              Text('1-6年级')
                .fontSize(12)
                .fontColor('#888888')
                .margin({ right: 5 })
              Text('8个课程')
                .fontSize(12)
                .fontColor('#888888')
              Button('去布置')
                .width(90)
                .height(32)
                .fontSize(14)
                .fontColor('#FFF')
                .backgroundColor('#7296f8')
                .borderRadius(20)
                .margin({ left: 20 })
            }
            .margin({ bottom: 50 })
          }

        }
        .layoutWeight(1)
        .margin({ left: 14 })
        .alignItems(HorizontalAlign.Start)
        .justifyContent(FlexAlign.SpaceBetween)
        .height(140)
      }
      .width('100%')
      .padding(16)
      .backgroundColor('#FFF')
      .borderRadius(16)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F7F8FA')
  }
}