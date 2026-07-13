@Entry
@Component
struct kaoYanLi {
  @State isLiked: boolean = false;
  @State likeCount: number = 8888;

  build() {
    Column() {
      Column({space: 10}) {
        Image($r('app.media.eyes'))
          .width('100%')
          .objectFit(ImageFit.Cover)
          .borderRadius({topLeft:5, topRight: 5})
        Text('考眼力又来了你能看到几只鸭子')
          .fontSize(14)
          .fontWeight(600)
          .fontColor('#414141')
          .lineHeight(22)
          .padding({left: 10, right: 10})
        Row() {
          Row({space: 5}){
            Image($r('app.media.eyewear'))
              .width(15)
              .aspectRatio(1)
            Text('视野联行眼镜')
              .fontSize(10)
              .fontColor('#787a7d')
          }
          Row({ space: 5}){
            Image($r('app.media.al_like'))
              .width(10)
              .aspectRatio(1)
              .fillColor(this.isLiked ? '#ff0000' : '#999')
            Text(this.likeCount.toString())
              .fontSize(10)
              .fontColor(this.isLiked ? '#ff0000' : '#787a7d')
          }
          .onClick(() => {
            if (this.isLiked) {
              // 取消点赞
              this.isLiked = false;
              this.likeCount--;
            } else {
              // 点赞
              this.isLiked = true;
              this.likeCount++;
            }
          })
        }
        .width('100%')
        .padding({left: 10, right: 10})
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width(200)
      .padding({bottom:10})
      .backgroundColor('#fff')
      .borderRadius(5)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f5f4f9')
    .padding(10)
  }
}