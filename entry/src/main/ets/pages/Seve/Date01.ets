@Entry
@Component
struct Date01 {
  year: string = new Date().getFullYear().toString()
  month: string = (new Date().getMonth() + 1).toString()
  date: string = new Date().getDate().toString()
  week: number = new Date().getDay()
  // 时分秒
  @State hour: number = new Date().getHours()
  @State minute: number = new Date().getMinutes()
  @State second: number = new Date().getSeconds()

  getWeek(weekNum: number): string {
    switch (weekNum) {
      case 0:
        return '周日'
      case 1:
        return '周一'
      case 2:
        return '周二'
      case 3:
        return '周三'
      case 4:
        return '周四'
      case 5:
        return '周五'
      case 6:
        return '周六'
      default:
        return ''
    }
  }

  build() {
    Column() {
      Column() {
        Text(`${this.year}年 ${this.month} 月 ${this.date} 日 ${this.getWeek(this.week)}`)
          .fontColor(Color.White)
          .fontSize(20)
        Stack() {
          Row({ space: 10 }) {
            Text(this.hour.toString())
              .textStyle()
            Text(this.minute.toString())
              .textStyle()
            Text(this.second.toString())
              .textStyle()
          }
          .onAppear(() => {
            setInterval(() => {
              const date = new Date()
              this.hour = date.getHours()
              this.minute = date.getMinutes()
              this.second = date.getSeconds()
            }, 1000)
          })

          Divider()
            .strokeWidth(2)
            .color(Color.Black)
        }
        .padding(10)
      }

      Text('Stay hungry,Stay foolish')
        .fontColor(Color.White)
        .fontSize(18)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Black)
    .justifyContent(FlexAlign.Center)
  }
}

@Extend(Text)
function textStyle() {
  .width(100)
  .height(100)
  .backgroundColor('#191919')
  .borderRadius(10)
  .textAlign(TextAlign.Center)
  .fontColor(Color.White)
  .fontSize(70)
  .fontWeight(900)
}