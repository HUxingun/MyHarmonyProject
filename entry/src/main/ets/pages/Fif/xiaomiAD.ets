@Entry
@Component
struct XiaomiYouPin {
  // 1. 创建控制器对象
  private swiperController: SwiperController = new SwiperController();

  // 轮播图图片资源
  private swiperImages: Resource[] = [
    $r('app.media.ic_swiper_xmyp01'),
    $r('app.media.ic_swiper_xmyp02'),
    $r('app.media.ic_swiper_xmyp03'),
    $r('app.media.ic_swiper_xmyp04')
  ];

  build() {
    Column() {
      Swiper(this.swiperController) {
        ForEach(this.swiperImages, (img: Resource) => {
          Image(img)
            .width('100%')
            .height('100%')
            .objectFit(ImageFit.Cover)
        })
      }
      .width('100%')
      .height(160)
      .autoPlay(true)           // 自动轮播
      .loop(true)               // 循环播放
      .interval(4000)           // 间隔 4 秒
      .indicator(
        Indicator.dot()
          .selectedColor(Color.White)
          .selectedItemWidth(30)
          .selectedItemHeight(4)
          .itemWidth(10)
          .itemHeight(4)
      )
      .borderRadius(12)
      .margin({ bottom: 20 })

      Row({ space: 20 }) {
        Button('上一张')
          .width(100)
          .height(40)
          .backgroundColor('#007DFF')
          .fontColor(Color.White)
          .onClick(() => {
            // 调用控制器方法：翻到上一页
            this.swiperController.showPrevious();
          })

        Button('下一张')
          .width(100)
          .height(40)
          .backgroundColor('#007DFF')
          .fontColor(Color.White)
          .onClick(() => {
            // 调用控制器方法：翻到下一页
            this.swiperController.showNext();
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.Center)
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundColor('#F5F5F5')
  }
}