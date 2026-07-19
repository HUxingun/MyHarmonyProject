import { router } from '@kit.ArkUI'
import { mockGoods, Goods } from '../model/GoodsModel'

@Component
struct GoodsCountLabel {
  @Consume('goodsList') goodsList: Goods[] = []
  build() {
    Text(`(${this.goodsList.length}件好物)`)
      .fontSize(13).fontColor('#b6854e').fontWeight(FontWeight.Normal)
  }
}

@Component
struct WaterFlowGoodsCard {
  @Prop goods: Goods
  @Prop cardImgHeight: number = 180

  build() {
    Column() {
      Image(this.goods.img)
        .width('100%').height(this.cardImgHeight)
        .objectFit(ImageFit.Cover).borderRadius({ topLeft: 10, topRight: 10 })
      Column() {
        Text(this.goods.name).fontSize(13).fontWeight(FontWeight.Medium).fontColor('#333')
          .maxLines(1).textOverflow({ overflow: TextOverflow.Ellipsis }).width('100%')
        Text(this.goods.desc).fontSize(10).fontColor('#999').maxLines(1)
          .width('100%').margin({ top: 2 })
        Row() {
          Text(`¥${this.goods.price}`).fontColor('#d9984e').fontSize(16).fontWeight(FontWeight.Bold)
          Text(`¥${this.goods.oriPrice}`).fontColor('#aaa').fontSize(10)
            .decoration({ type: TextDecorationType.LineThrough }).margin({ left: 6 })
          Blank()
          if (this.goods.tag) {
            Text(this.goods.tag).fontSize(9).fontColor('#d9984e')
              .padding({ left: 4, right: 4, top: 1, bottom: 1 })
              .border({ width: 1, color: '#d9984e', radius: 3 })
          }
        }.width('100%').margin({ top: 6 })
      }.padding(8).alignItems(HorizontalAlign.Start)
    }
    .backgroundColor(Color.White).borderRadius(10).width('100%')
    .onClick(() => router.pushUrl({ url: 'pages/GoodsDetailPage', params: { goods: this.goods } }))
  }
}

@Component
export default struct MainPage {
  @Provide('goodsList') goodsList: Goods[] = mockGoods
  private heightPool: number[] = [180, 230, 160, 250, 200, 190, 240, 170]

  navList: XMNavItem[] = [
    { title: '上新精选', icon: $r('app.media.ic_xiaomi_nav_01') },
    { title: '智能家电', icon: $r('app.media.ic_xiaomi_nav_02') },
    { title: '小米众筹', icon: $r('app.media.ic_xiaomi_nav_03') },
    { title: '有品会员', icon: $r('app.media.ic_xiaomi_nav_04') },
    { title: '有品秒杀', icon: $r('app.media.ic_xiaomi_nav_05') },
    { title: '原产地', icon: $r('app.media.ic_xiaomi_nav_06') },
    { title: '生活优选', icon: $r('app.media.ic_xiaomi_nav_07') },
    { title: '手机', icon: $r('app.media.ic_xiaomi_nav_08') },
    { title: '小米自营', icon: $r('app.media.ic_xiaomi_nav_09') },
    { title: '茅台酒饮', icon: $r('app.media.ic_xiaomi_nav_10') },
    { title: '卫衣', icon: $r('app.media.ic_xiaomi_nav_11') },
    { title: '一整套床', icon: $r('app.media.ic_xiaomi_nav_12') },
    { title: '鲜橙', icon: $r('app.media.ic_xiaomi_nav_13') },
    { title: '好惠买', icon: $r('app.media.ic_xiaomi_nav_14') },
    { title: '沙发', icon: $r('app.media.ic_xiaomi_nav_15') },
    { title: '按摩椅', icon: $r('app.media.ic_xiaomi_nav_16') },
    { title: '护肤品', icon: $r('app.media.ic_xiaomi_nav_17') },
    { title: '剃须刀', icon: $r('app.media.ic_xiaomi_nav_18') },
    { title: '筋膜枪', icon: $r('app.media.ic_xiaomi_nav_19') },
    { title: '显示器', icon: $r('app.media.ic_xiaomi_nav_20') }
  ]

  // 计算瀑布流总高度(避免嵌套滚动)
  private calcWaterFlowHeight(): number {
    const cols = 2
    const rows = Math.ceil(this.goodsList.length / cols) + 1 // +1 for 加载更多
    let h = 0
    for (let i = 0; i < rows - 1; i++) {
      const idx = i * cols
      const h1 = this.heightPool[idx % this.heightPool.length]
      const h2 = this.heightPool[(idx + 1) % this.heightPool.length]
      h += Math.max(h1, h2) + 60 + 8 // 图片高 + 信息区 + gap
    }
    h += 50 // 加载更多
    return h
  }

  build() {
    Column() {
      this.HeaderBuilder()

      Scroll() {
        Column() {
          // ---- Swiper ----
          Swiper() {
            Image($r('app.media.ic_swiper_xmyp01')).objectFit(ImageFit.Cover)
            Image($r('app.media.ic_swiper_xmyp02')).objectFit(ImageFit.Cover)
            Image($r('app.media.ic_swiper_xmyp03')).objectFit(ImageFit.Cover)
            Image($r('app.media.ic_swiper_xmyp04')).objectFit(ImageFit.Cover)
          }
          .height(120).borderRadius(10).width('100%')
          .margin({ left: 12, right: 12 })
          .indicator(Indicator.dot().selectedColor(Color.White).selectedItemWidth(25).selectedItemHeight(4))

          // ---- 导航网格 ----
          Column() {
            this.navBuilder()
          }.margin({ left: 12, right: 12 })

          // ---- 楼层图 ----
          Image($r('app.media.ic_xiaomi_floor'))
            .width('100%').margin({ top: 6, left: 12, right: 12 })

          // ---- 上下滚动图 ----
          Image($r('app.media.ic_xiaomi_scroll_02'))
            .width('100%').objectFit(ImageFit.Cover).borderRadius(8)
            .margin({ top: 6, left: 12, right: 12 })
          Image($r('app.media.ic_xiaomi_scroll_03'))
            .width('100%').objectFit(ImageFit.Cover).borderRadius(8)
            .margin({ top: 4, left: 12, right: 12 })

          // ---- 标题 ----
          Row() {
            Text('为你推荐').fontSize(17).fontWeight(FontWeight.Bold).fontColor('#333')
            GoodsCountLabel()
            Blank()
            Text('查看更多 >').fontSize(12).fontColor('#999')
          }.width('100%').padding({ left: 14, right: 14, top: 12, bottom: 6 })

          // ---- 瀑布流 ----
          WaterFlow() {
            ForEach(this.goodsList, (item: Goods, index: number) => {
              FlowItem() {
                WaterFlowGoodsCard({
                  goods: item,
                  cardImgHeight: this.heightPool[index % this.heightPool.length]
                })
              }.width('100%')
            })
            FlowItem() {
              Text('— 加载更多 —').width('100%').fontSize(13)
                .fontColor('#999').textAlign(TextAlign.Center).padding({ top: 16, bottom: 16 })
            }.width('100%')
          }
          .columnsTemplate('1fr 1fr')
          .columnsGap(8).rowsGap(8)
          .padding({ left: 10, right: 10, bottom: 20 })
          .width('100%')
          .height(this.calcWaterFlowHeight())
          .scrollBar(BarState.Off)
        }.width('100%')
      }
      .layoutWeight(1)
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
    }
    .width('100%').height('100%').backgroundColor('#faf5eb')
  }

  @Builder
  HeaderBuilder() {
    Row({ space: 10 }) {
      Image($r('app.media.ic_xiaomi_logo')).width(50)
      Row({ space: 10 }) {
        Image($r('app.media.ic_xiaomi_search')).width(20)
        Text('搜索小米有品').fontColor('#ccc').fontSize(14)
      }
      .width(220).height(36).backgroundColor(Color.White).borderRadius(18)
      .padding({ left: 10 }).border({ width: 1, color: '#b6854e' })
      Badge({ value: '99+', position: { x: 15 }, style: {} }) {
        Image($r('app.media.ic_xiaomi_ring')).width(35)
      }
    }
    .padding(10).width('100%')
    .linearGradient({ angle: 180, colors: [['#fef9f0', 0], ['#faf5eb', 1]] })
  }

  @Builder
  navBuilder() {
    Column() {
      Grid() {
        ForEach(this.navList, (item: XMNavItem, index: number) => {
          GridItem() {
            Column() {
              Image(item.icon).width(80)
              Text(item.title).fontSize(12)
            }.height('100%')
          }
          .width('20%')
          .onClick(() => {
            const goods = this.getNavGoods(index)
            if (goods) {
              router.pushUrl({ url: 'pages/GoodsDetailPage', params: { goods: goods } })
            }
          })
        })
      }
      .rowsTemplate('1fr 1fr').height(160).width('100%')
      .backgroundColor(Color.White).borderRadius(10).padding({ bottom: 10 })
      .scrollBar(BarState.Off)
    }
  }

  // 导航索引 → 对应商品在 goodsList 中的索引
  getNavGoods(index: number): Goods | undefined {
    // 0:上新精选→1 1:智能家电→3 2:小米众筹→4 3:有品会员→2 4:有品秒杀→5
    // 5:原产地→12 6:生活优选→6 7:手机→1 8:小米自营→9 9:茅台→0
    // 10:卫衣→10 11:床→11 12:鲜橙→12 13:好惠买→7 14:沙发→13
    // 15:按摩椅→14 16:护肤→15 17:剃须刀→16 18:筋膜枪→17 19:显示器→18
    const goodsIdxList: number[] = [1,3,4,2,5,12,6,1,9,0,10,11,12,7,13,14,15,16,17,18]
    const idx = goodsIdxList[index]
    if (idx >= 0 && idx < this.goodsList.length) {
      return this.goodsList[idx]
    }
    return undefined
  }
}

interface XMNavItem {
  title: string
  icon: ResourceStr
}
