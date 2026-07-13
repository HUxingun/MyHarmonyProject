@Entry
@Component
export struct ShouJiTaoBao {
  private images: Resource[] = [
    $r('app.media.ic_swiper_tb01'),
    $r('app.media.ic_swiper_tb02'),
    $r('app.media.ic_swiper_tb03'),
    $r('app.media.ic_swiper_tb04')
  ];

  build() {
    Swiper() {
      ForEach(this.images, (item: Resource) => {
        Image(item)
          .width('100%')
          .height('100%')
          .objectFit(ImageFit.Cover)
          .borderRadius(10)
      })
    }
    .width(171)
    .height(250)
    .loop(true)
    .autoPlay(true)
    .interval(4000)
    .indicator(
      Indicator.dot()
        .selectedColor(Color.Orange)
        .itemWidth(6)
        .itemHeight(6)
        .selectedItemWidth(6)
        .selectedItemHeight(6)
    )
  }
}