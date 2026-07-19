import { allCategoryGoods, categoryBanners, CategoryBannerItem, CategoryGoodsItem } from '../model/CategoryData'

@Entry
@Component
export default struct CategoryPage {
  @State selectedCategoryIndex: number = 0
  // 当前选中的分类商品列表
  @State selectedGoods: CategoryGoodsItem[] = allCategoryGoods[0]

  // 左侧侧边栏数据 (8 组)
  private sideCategories: string[] = [
    '有品推荐',
    '手机数码',
    '电脑办公',
    '智能家电',
    '生活用品',
    '服饰鞋包',
    '食品生鲜',
    '运动健康'
  ]

  build() {
    Row() {
      // ==================== 1. 左侧侧边导航栏 ====================
      List() {
        ForEach(this.sideCategories, (item: string, index: number) => {
          ListItem() {
            Text(item)
              .fontSize(14)
              .fontColor(this.selectedCategoryIndex === index ? '#b6854e' : '#4a4a4a')
              .fontWeight(this.selectedCategoryIndex === index ? FontWeight.Bold : FontWeight.Normal)
              .width('100%')
              .textAlign(TextAlign.Center)
              .padding({ top: 16, bottom: 16 })
              .backgroundColor(this.selectedCategoryIndex === index ? '#fdf8f0' : '#fcf7ef')
              .border({
                width: { left: this.selectedCategoryIndex === index ? 3 : 0 },
                color: '#b6854e'
              })
              .onClick(() => {
                this.selectedCategoryIndex = index
                this.selectedGoods = allCategoryGoods[index]
              })
          }
        })
      }
      .width(90)
      .height('100%')
      .backgroundColor('#fcf7ef')
      .scrollBar(BarState.Off)

      // ==================== 2. 右侧内容区域 ====================
      Column() {
        Scroll() {
          Column({ space: 10 }) {
            // ---- 轮播图 ----
            Swiper() {
              ForEach(categoryBanners, (banner: CategoryBannerItem) => {
                Image(banner.img)
                  .width('100%')
                  .height(140)
                  .borderRadius(10)
                  .objectFit(ImageFit.Cover)
              })
            }
            .width('100%')
            .height(140)
            .autoPlay(true)
            .interval(3000)
            .indicator(
              Indicator.dot()
                .selectedColor('#b6854e')
                .color('#d5d5d5')
                .itemWidth(6)
                .itemHeight(6)
            )

            // ---- 精选分类标题 + 3 列网格 ----
            Column() {
              Text('精选分类')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .padding({ bottom: 10 })
                .alignSelf(ItemAlign.Start)

              Grid() {
                ForEach(this.selectedGoods, (item: CategoryGoodsItem) => {
                  GridItem() {
                    Column({ space: 6 }) {
                      Image(item.img)
                        .width(65)
                        .height(65)
                        .objectFit(ImageFit.Contain)
                        .borderRadius(8)
                        .backgroundColor('#f9f9f9')
                      Text(item.name)
                        .fontSize(11)
                        .fontColor('#333')
                        .maxLines(1)
                        .textOverflow({ overflow: TextOverflow.Ellipsis })
                    }
                    .width('100%')
                    .padding({ top: 10, bottom: 10 })
                    .backgroundColor(Color.White)
                    .borderRadius(10)
                  }
                })
              }
              .columnsTemplate('1fr 1fr 1fr')
              .rowsGap(8)
              .columnsGap(8)
              .width('100%')
            }
            .padding(12)
            .backgroundColor(Color.White)
            .borderRadius(10)

            // ---- 精选专区 ----
            Column() {
              Text('精选专区')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .width('100%')
                .padding({ bottom: 10 })
                .alignSelf(ItemAlign.Start)

              // 单品大图推荐 (取当前分类第一件商品)
              if (this.selectedGoods.length > 0) {
                Column() {
                  Image(this.selectedGoods[0].img)
                    .width('100%')
                    .height(160)
                    .objectFit(ImageFit.Cover)
                    .borderRadius(10)
                  Text(this.selectedGoods[0].name)
                    .fontSize(14)
                    .fontWeight(FontWeight.Medium)
                    .margin({ top: 8 })
                  Text('品质好物 · 精选推荐')
                    .fontSize(11)
                    .fontColor('#999')
                    .margin({ top: 4 })
                }
                .width('100%')
                .padding({ bottom: 8 })
              }

              // 横排两个小图
              if (this.selectedGoods.length > 2) {
                Row({ space: 8 }) {
                  Column() {
                    Image(this.selectedGoods[1].img)
                      .width('100%')
                      .height(90)
                      .objectFit(ImageFit.Cover)
                      .borderRadius(8)
                    Text(this.selectedGoods[1].name)
                      .fontSize(11)
                      .fontColor('#333')
                      .margin({ top: 4 })
                  }
                  .layoutWeight(1)

                  Column() {
                    Image(this.selectedGoods[2].img)
                      .width('100%')
                      .height(90)
                      .objectFit(ImageFit.Cover)
                      .borderRadius(8)
                    Text(this.selectedGoods[2].name)
                      .fontSize(11)
                      .fontColor('#333')
                      .margin({ top: 4 })
                  }
                  .layoutWeight(1)
                }
                .width('100%')
              }
            }
            .padding(12)
            .backgroundColor(Color.White)
            .borderRadius(10)
          }
          .padding({ left: 10, right: 10, bottom: 20 })
        }
        .layoutWeight(1)
        .scrollBar(BarState.Off)
        .backgroundColor('#faf5eb')
      }
      .layoutWeight(1)
      .height('100%')
    }
    .width('100%')
    .height('100%')
  }
}
