@Entry
@Component
struct ScenicCard {
  @State imgPress: boolean = false;
  @State likeScale: number = 1;
  @State isCollect: boolean = false;

  build() {
    Column() {
      Row() {
        Stack({ alignContent: Alignment.TopStart }) {
          Image($r("app.media.Y0"))
            .width(120)
            .height(220)
            .borderRadius(12)
            .objectFit(ImageFit.Cover)
            .rotate({ angle: this.imgPress ? 4 : 0 })
            .scale({ x: this.imgPress ? 0.96 : 1, y: this.imgPress ? 0.96 : 1 })
            .animation({ duration: 300, curve: Curve.EaseInOut })
            .onTouch((e: TouchEvent) => {
              if (e.type === TouchType.Down) {
                this.imgPress = true;
              } else if (e.type === TouchType.Up || e.type === TouchType.Cancel) {
                this.imgPress = false;
              }
            })
          Text("NO.1")
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .fontColor("#8B6914")
            .padding({ left: 10, right: 10, top: 4, bottom: 4 })
            .borderRadius({ topLeft: 6, topRight: 6, bottomLeft: 0, bottomRight: 6 })
            .linearGradient({
              direction: GradientDirection.Right,
              colors: [["#ffffff", 0], ["#CFB298", 1]]
            })
            .shadow({
              radius: 4,
              color: "#33000000",
              offsetX: 2,
              offsetY: 2
            })
        }
        .width(120)
        .height(220)

        Column() {
          Row() {
            Text("北京环球度假区")
              .fontSize(18)
              .fontWeight(FontWeight.Bold)
              .layoutWeight(1)
            Image($r("app.media.ic_shouchang"))
              .width(28)
              .height(28)
          }

          Row() {
            Row() {
              Image($r("app.media.fire"))
                .width(16)
                .height(16)
                .fillColor('#fff')
              Text("10")
                .fontSize(14)
                .fontColor("#fff")
                .margin({ left: 2 })
            }
            .backgroundColor("#ff6600")
            .borderRadius(10)
            .padding({ left: 8, right: 8, top: 3, bottom: 3 })

            Text("|  4.5分 1.8w条点评  ¥378起")
              .fontSize(10)
              .fontColor("#666666")
              .margin({ left: 6 })
          }
          .margin({ top: 6, bottom: 8, right: 10 })

          Column() {
            Row() {
              Image($r("app.media.dianzan"))
                .width(18)
                .height(18)
                .scale({ x: this.likeScale, y: this.likeScale })
                .animation({ duration: 200, curve: Curve.EaseOut })
                .onClick(() => {
                  this.likeScale = 1.3;
                  this.isCollect = !this.isCollect;
                  setTimeout(() => {
                    this.likeScale = 1;
                  }, 200);
                })
              Image($r("app.media.cranking_item_recommend_text"))
                .width(55)
                .height(18)
                .objectFit(ImageFit.Contain)
                .margin({ left: 4 })

              Text('全球第五座环')
                .fontSize(13)
                .fontColor("#333333")
                .margin({ left: 6 })
            }
            .width("100%")
            .alignItems(VerticalAlign.Center)

            Text('球影城主题乐园，有哈利·波特变形金刚功夫熊猫等项目，玩一周不重样！')
              .fontSize(13)
              .fontColor("#333333")
              .maxLines(3)
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .width("100%")
          }
          .width("100%")
          .padding(8)
          .backgroundColor("#FFF5E6")
          .borderRadius(8)
          .margin({ top: 4, bottom: 8 })

          Row() {
            Text("嗨玩乐园")
              .fontSize(14)
              .fontColor("#5577bb")
              .border({ width: 1, color: "#aabbdd", style: BorderStyle.Solid })
              .padding({ left: 10, right: 10, top: 4, bottom: 4 })
              .borderRadius(4)
            Text("游乐场")
              .fontSize(14)
              .fontColor("#5577bb")
              .border({ width: 1, color: "#aabbdd", style: BorderStyle.Solid })
              .padding({ left: 10, right: 10, top: 4, bottom: 4 })
              .borderRadius(4)
              .margin({ left: 8 })
          }
          .width("100%")
          .justifyContent(FlexAlign.Start)

          Row() {
            Image($r('app.media.ic_loaction'))
              .width(16)
              .height(16)
            Text("北京 · 果园环岛/通州区")
              .fontSize(10)
              .fontColor("#666666")
              .margin({ left: 4 })
              .layoutWeight(1)
            Text("距您36.7km")
              .fontSize(10)
              .fontColor("#888888")
          }
          .width("100%")
          .alignItems(VerticalAlign.Center)
          .margin({ top: 8 })
        }
        .layoutWeight(1)
        .padding({ left: 12 })
      }
      .width("100%")
      .padding(12)
    }
    .width("100%")
    .backgroundColor("#fff")
    .borderRadius(12)
    .padding(8)
  }
}