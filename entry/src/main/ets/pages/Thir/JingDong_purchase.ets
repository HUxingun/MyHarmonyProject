@Entry
@Component
struct JingDong_purchase {
  @State
  amount: number = 6
  build() {
    Column() {
      Button('减少库存')
        .width('80%')
        .onClick(()=>{
          this.amount--
        })
        .margin({top:10})
      Button('增加库存')
        .width('80%')
        .margin({top:10})
        .onClick(()=>{
          this.amount++
        })
      Column() {
        // 底部菜单
        Row({space: 10}) {
          // 左侧菜单
          Row() {
            Column({space: 5}) {
              Image($r('app.media.ic_dianpu'))
                .width(20)
              Text('店铺')
                .fontSize(10)
                .fontColor('#262626')
            }
            Column({space: 5}) {
              Image($r('app.media.ic_kefu'))
                .width(20)
                .fillColor('#666')
              Text('客服')
                .fontSize(10)
                .fontColor('#262626')
            }
            Column({space: 5}) {
              Image($r('app.media.ic_cart2'))
                .width(20)
                .fillColor('#666')
              Text('购物车')
                .fontSize(10)
                .fontColor('#262626')
            }
          }
          .layoutWeight(1)
          .justifyContent(FlexAlign.SpaceBetween)
          if (this.amount >= 1) {
            Row({space: 5}) {
              Button('加入购物车')
                .width(105)
                .height(40)
                .backgroundColor('#ffcc00')
                .fontSize(14)
                .fontWeight(600)
              Button('立即购买')
                .width(105)
                .height(40)
                .backgroundColor('#f92c1b')

                .fontWeight(600)
            }
          } else {
            Row() {
              Button('查看类似商品')
                .width(170)
                .height(40)
                .backgroundColor('#ffcc00')
                .fontSize(14)
                .fontWeight(600)
            }
          }
        }
        .width('100%')
        .height(60)
          .backgroundColor('#f7f7f7')
          .padding({left: 20, right: 10})
        if (this.amount <= 0) {
          Row() {
            Row({ space: 5 }){
              Image($r('app.media.ic_lingdang'))
                .width(12)
                .fillColor('#de6a1c')
              Text('该商品暂时没有库存，看看相似商品吧')
                .fontSize(10)
                .fontColor('#de6a1c')
            }
            Image($r('app.media.ic_shangjiantou'))
              .width(15)
              .padding(3)
              .fillColor('#d0662c')
              .backgroundColor('rgba(0,0,0,0.1)')
              .borderRadius(8)
          }
          .width('100%')
          .height(36)
          .backgroundColor('#fbf9da')
          .position({x: 0, y: '-36'})
          .padding({left: 20, right: 20})
          .justifyContent(FlexAlign.SpaceBetween)
        }
      }
      .position({x:0,y:'100%'})
      .translate({y: '-100%'})
    }
    .width('100%')
    .height('100%')
    .padding({bottom:20})
    .backgroundColor('#f2f2f2')
  }
}