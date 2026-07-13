@Entry
@Component
struct User_news {
  build() {
    Row({space:15}) {
      Image($r('app.media.tianhuang'))
        .width(60)
        .margin({left:10})
        .borderRadius(50)
      Column({space:5}){
        Row({space:10}){
          Text('用户114514')
            .fontWeight(700)
            .fontSize(20)
            .fontColor('#1a1a1a')
          Text('天皇')
            .border({width:1,color:'#d0d0d0'})
            .borderRadius(15)
            .fontColor(Color.Blue)
            .padding({left:8,right:8,top:3,bottom:3})
            .fontSize(12)
        }.width('100%')
        .height(30)
        Text('我干的')
          .fontColor('#999')
          .textAlign(TextAlign.Start) //左对齐
          .width('100%')
      }
    }
    .backgroundColor('#F0F7FF')
    .height(75)
    .width('100%')
    .padding({ left: 5, right: 15 })
    .borderRadius(12)
  }
}