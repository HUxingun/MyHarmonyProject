import { router } from '@kit.ArkUI'
import { Goods, CartStore } from '../model/GoodsModel'
import { promptAction } from '@kit.ArkUI'

/**
 * 数量选择器 - 使用 @Link 实现父子双向绑定
 */
@Component
struct QuantityCounter {
  @Link count: number

  build() {
    Row() {
      Text('-')
        .fontSize(22)
        .fontColor(this.count > 1 ? '#333' : '#ccc')
        .width(32)
        .height(32)
        .textAlign(TextAlign.Center)
        .onClick(() => {
          if (this.count > 1) {
            this.count--
          }
        })

      Text(this.count.toString())
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .width(40)
        .textAlign(TextAlign.Center)

      Text('+')
        .fontSize(22)
        .fontColor('#333')
        .width(32)
        .height(32)
        .textAlign(TextAlign.Center)
        .onClick(() => {
          this.count++
        })
    }
    .backgroundColor('#f5f5f5')
    .borderRadius(16)
    .padding({ left: 8, right: 8 })
  }
}

@Entry
@Component
struct GoodsDetailPage {
  @State goods: Goods | null = null
  @State buyCount: number = 1
  @State currentImgIndex: number = 0

  // 模拟多张商品图片(用同一张图的不同尺寸展示)
  private detailImgs: string[] = []

  aboutToAppear(): void {
    const params = router.getParams() as Record<string, Object>
    if (params && params['goods']) {
      this.goods = params['goods'] as Goods
      if (this.goods) {
        // 用商品图片做详情轮播
        this.detailImgs = [this.goods.img, this.goods.img, this.goods.img]
      }
    }
  }

  build() {
    Column() {
      // ========== 顶部导航栏 ==========
      Row() {
        // 返回按钮 — 实心底衬 + 左箭头
        Stack() {
          Circle()
            .width(32)
            .height(32)
            .fill('#e8e2d8')
          Image($r('app.media.ic_public_arrow_left'))
            .width(20)
            .height(20)
            .fillColor('#4a3728')
        }
        .onClick(() => router.back())

        Text('商品详情')
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .fontColor('#2c3e50')

        Image($r('app.media.ic_public_question'))
          .width(24)
          .height(24)
          .fillColor('#2c3e50')
      }
      .width('100%')
      .padding({ left: 16, right: 16, top: 12, bottom: 12 })
      .linearGradient({
        angle: 180,
        colors: [['#fef9f0', 0], ['#faf5eb', 1]]
      })

      if (this.goods) {
        Scroll() {
          Column() {
            // ========== 商品图片轮播 ==========
            Swiper() {
              ForEach(this.detailImgs, (img: string) => {
                Image(img)
                  .width('100%')
                  .height(320)
                  .objectFit(ImageFit.Cover)
              })
            }
            .width('100%')
            .height(320)
            .indicator(
              Indicator.dot()
                .selectedColor('#b6854e')
                .color('#d5d5d5')
            )

            // ========== 商品基本信息卡片 ==========
            Column() {
              // 价格行
              Row() {
                Text(`¥${this.goods!.price}`)
                  .fontColor('#d9984e')
                  .fontSize(28)
                  .fontWeight(FontWeight.Bold)
                Text(`¥${this.goods!.oriPrice}`)
                  .fontColor('#aaa')
                  .fontSize(14)
                  .decoration({ type: TextDecorationType.LineThrough })
                  .margin({ left: 12 })
                if (this.goods!.tag) {
                  Text(this.goods!.tag)
                    .fontSize(10)
                    .fontColor('#d9984e')
                    .padding({ left: 6, right: 6, top: 2, bottom: 2 })
                    .border({ width: 1, color: '#d9984e', radius: 3 })
                    .margin({ left: 12 })
                }
              }
              .width('100%')
              .margin({ top: 4 })

              // 商品名
              Text(this.goods!.name)
                .fontSize(20)
                .fontWeight(FontWeight.Bold)
                .fontColor('#222')
                .width('100%')
                .margin({ top: 12 })

              // 描述
              Text(this.goods!.desc)
                .fontSize(14)
                .fontColor('#888')
                .width('100%')
                .margin({ top: 6 })

              // 已选规格
              Row() {
                Text('已选')
                  .fontSize(13)
                  .fontColor('#999')
                Text('1件')
                  .fontSize(13)
                  .fontColor('#333')
                  .margin({ left: 20 })
              }
              .width('100%')
              .margin({ top: 16 })
              .padding({ top: 12, bottom: 12 })
              .border({
                width: { top: 0.5, bottom: 0.5 },
                color: '#eee'
              })
            }
            .width('100%')
            .padding(16)
            .backgroundColor(Color.White)
            .margin({ top: 10 })

            // ========== 商品详情图(模拟) ==========
            Column() {
              Text('— 商品详情 —')
                .fontSize(14)
                .fontColor('#999')
                .width('100%')
                .textAlign(TextAlign.Center)
                .padding({ top: 20, bottom: 20 })

              Image(this.goods!.img)
                .width('100%')
                .objectFit(ImageFit.Contain)
              Image(this.goods!.img)
                .width('100%')
                .objectFit(ImageFit.Contain)
                .margin({ top: 10 })
            }
            .width('100%')
            .backgroundColor(Color.White)
            .margin({ top: 10 })
            .padding({ bottom: 100 }) // 留出底部按钮空间
          }
        }
        .layoutWeight(1)
        .scrollBar(BarState.Off)
      } else {
        // 无数据占位
        Column() {
          Text('暂无商品信息')
            .fontSize(16)
            .fontColor('#999')
        }
        .layoutWeight(1)
        .justifyContent(FlexAlign.Center)
      }

      // ========== 底部操作栏 ==========
      if (this.goods) {
        Row() {
          // 数量选择 (使用 @Link 双向绑定)
          QuantityCounter({ count: $buyCount })
            .margin({ left: 16 })

          Blank()

          // 加入购物车
          Button('加入购物车')
            .backgroundColor('#b6854e')
            .fontColor(Color.White)
            .fontSize(14)
            .height(44)
            .borderRadius(22)
            .padding({ left: 20, right: 20 })
            .onClick(() => {
              CartStore.addGoods(this.goods!, this.buyCount)
              promptAction.showToast({ message: '已加入购物车', duration: 1500 })
              this.buyCount = 1
            })

          // 立即购买
          Button('立即购买')
            .backgroundColor('#d9984e')
            .fontColor(Color.White)
            .fontSize(14)
            .height(44)
            .borderRadius(22)
            .padding({ left: 20, right: 20 })
            .margin({ left: 10, right: 16 })
            .onClick(() => {
              CartStore.addGoods(this.goods!, this.buyCount)
              router.pushUrl({ url: 'pages/CartPage' })
            })
        }
        .width('100%')
        .height(64)
        .backgroundColor(Color.White)
        .padding({ left: 0, right: 0 })
        .shadow({ radius: 8, color: '#10000000', offsetY: -2 })
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#fdf8f0')
  }
}
