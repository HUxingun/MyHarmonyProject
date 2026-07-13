@Entry
@Component
struct CityList {
  @Builder
  showPeople(txt: string, imageResource: Resource) {
    Row() {
      Image(imageResource)
        .width(40)
        .height(40)
        .margin(10)
        .borderRadius(20)
        .objectFit(ImageFit.Cover)
      Text(txt)
        .fontSize(20)
        .fontWeight(FontWeight.Medium)
        .fontColor('#222222')
    }
    .width('100%')
    .backgroundColor('#FFF')
  }
  build() {
    Column(){
        this.showPeople('胡歌', $r('app.media.hugue'))
        this.showPeople('周杰伦', $r('app.media.zhoujielun'))
        this.showPeople('杨幂', $r('app.media.ym'))
    }
    .width('100%')
    .height('100%')
    .padding(16)
  }
}