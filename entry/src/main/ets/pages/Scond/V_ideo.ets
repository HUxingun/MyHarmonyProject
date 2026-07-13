@Entry
@Component
struct V_ideo {
  build() {
    Column(){
      Column() {
        Stack({ alignContent: Alignment.BottomStart}) {
          Image($r('app.media.tieyi'))
            .width(200)
            .height(125)
            .objectFit(ImageFit.Cover)
            .borderRadius({
              topLeft: 10,
              topRight: 10
            })
          Row() {
            Row({ space: 5}) {
              Image($r('app.media.ic_bofangshu'))
                .width(16)
                .fillColor('#fff')
              Text('282万')
                .fontColor('#fff')
                .fontSize(12)
            }
            .margin({right: 5})
            Row({ space: 5}) {
              Image($r('app.media.ic_ziyuan'))
                .fillColor('#fff')
                .width(14)
              Text('8655')
                .fontColor('#fff')
                .fontSize(12)
            }
            Blank()
            Text('4:33')
              .fontColor('#fff')
              .fontSize(12)
          }.backgroundColor('#497942')
            .margin({bottom:10,left:3,right:3})
            .opacity(0.8)
            .width('97%')
            .height(24)
            .padding({left: 5, right: 5})
        }
        // 文字区域
        Column() {
          // 标题文字
          Text('【凤凰传奇新歌】欢迎来到国风统治区：唢呐一响神曲《铁衣流派推广曲》')
            .fontSize(13)
            .textOverflow({overflow: TextOverflow.Ellipsis})
            .maxLines(2)
            .lineHeight(16)
          // 点赞更多
          Row(){
            Text('19万点赞')
              .padding(3)
              .backgroundColor('#fef0ef')
              .fontSize(10)
              .fontColor('#e66c43')
            Image($r('app.media.ic_gengduo'))
              .width(14)
              .fillColor('#bfbfbf')
          }
          .width('100%')
          .margin({top: 10})
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .padding(5)
      }
      .width(200)
      .height(200)
      .backgroundColor('#fff')
      .borderRadius(10)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f5f6f7')
    .padding(10)
  }
}