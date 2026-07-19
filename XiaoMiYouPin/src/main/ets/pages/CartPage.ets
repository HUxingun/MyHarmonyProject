import { CartGoods, mockGoods } from '../model/GoodsModel'
import { promptAction } from '@kit.ArkUI'

const GOLD_MAIN: string = '#b6854e'
const BG_WARM: string = '#faf5eb'

@Entry
@Component
export default struct CartPage {
  @StorageLink('cartGoodsList') cartList: CartGoods[] = []
  @State @Watch('calcTotal') checkedCartIds: string[] = []
  @State totalPrice: number = 0
  @State buyCount: number = 0

  aboutToAppear(): void {
    if (this.cartList.length === 0) {
      // 初始化 6 件示例商品
      const initList: CartGoods[] = [
        new CartGoods(mockGoods[0], 1),
        new CartGoods(mockGoods[1], 2),
        new CartGoods(mockGoods[2], 1),
        new CartGoods(mockGoods[3], 1),
        new CartGoods(mockGoods[4], 1),
        new CartGoods(mockGoods[5], 1)
      ]
      AppStorage.setOrCreate('cartGoodsList', initList)
    }
  }

  calcTotal(): void {
    let price = 0
    let count = 0
    for (const item of this.cartList) {
      if (this.checkedCartIds.includes(item.id)) {
        price += item.goods.price * item.count
        count += item.count
      }
    }
    this.totalPrice = price
    this.buyCount = count
  }

  // 右滑删除按钮
  @Builder
  deleteBtn(id: string) {
    Button('删除')
      .backgroundColor('#e74c3c')
      .fontColor(Color.White)
      .fontSize(14)
      .height('100%')
      .type(ButtonType.Normal)
      .onClick(() => {
        const index = this.cartList.findIndex((v: CartGoods) => v.id === id)
        if (index >= 0) {
          this.cartList.splice(index, 1)
          AppStorage.setOrCreate('cartGoodsList', this.cartList)
          this.calcTotal()
        }
      })
  }

  build() {
    Column() {
      // ========== 标题栏 ==========
      Row() {
        Text(`购物车(${this.cartList.length})`)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
        Blank()
        Text(`共${this.cartList.length}种商品`)
          .fontSize(12)
          .fontColor('#999')
      }
      .width('100%')
      .padding({
        left: 16,
        right: 16,
        top: 16,
        bottom: 12
      })
      .backgroundColor(Color.White)

      if (this.cartList.length > 0) {
        // ========== 商品列表 ==========
        List() {
          ForEach(this.cartList, (item: CartGoods) => {
            ListItem() {
              CartGoodsRow({
                cartItem: item,
                onCountChange: () => this.calcTotal()
              })
            }
            .swipeAction({ end: this.deleteBtn(item.id) })
          }, (item: CartGoods) => item.id)
        }
        .layoutWeight(1)
        .backgroundColor(BG_WARM)
        .scrollBar(BarState.Off)

        // ========== 底部结算栏 ==========
        Column() {
          // 运费提示
          Row() {
            Text('🎫')
              .fontSize(14)
            Text(this.totalPrice >= 69 ? ' 已免运费' : ` 还差¥${(69 - this.totalPrice).toFixed(2)}免运费`)
              .fontSize(12)
              .fontColor(this.totalPrice >= 69 ? '#999' : '#d9984e')
          }
          .width('100%')
          .padding({ left: 16, top: 6, bottom: 4 })

          Row() {
            // 全选 (CheckboxGroup)
            Row() {
              CheckboxGroup({ group: 'cart' })
                .selectedColor(GOLD_MAIN)
                .onChange((event: CheckboxGroupResult) => {
                  this.checkedCartIds = event.name as string[]
                  this.calcTotal()
                })
              Text('全选')
                .fontSize(14)
                .margin({ left: 4 })
            }

            Blank()

            // 合计 + 结算
            Column() {
              Text(`合计: ¥${this.totalPrice.toFixed(2)}`)
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .fontColor('#333')
              Text('不含运费')
                .fontSize(10)
                .fontColor('#999')
            }
            .alignItems(HorizontalAlign.End)
            .margin({ right: 12 })

            Button(`去结算(${this.buyCount})`)
              .height(40)
              .backgroundColor(this.buyCount > 0 ? '#d9984e' : '#ccc')
              .fontColor(Color.White)
              .fontSize(14)
              .borderRadius(20)
              .padding({ left: 16, right: 16 })
              .onClick(() => {
                if (this.buyCount === 0) {
                  promptAction.showToast({ message: '请先选择商品', duration: 1500 })
                } else {
                  promptAction.showToast(
                    { message: `已下单${this.buyCount}件，合计¥${this.totalPrice.toFixed(2)}`, duration: 1500 })
                }
              })
          }
          .width('100%')
          .padding({
            left: 16,
            right: 16,
            top: 8,
            bottom: 8
          })
        }
        .width('100%')
        .backgroundColor(Color.White)
        .shadow({ radius: 6, color: '#10000000', offsetY: -2 })
      } else {
        // ========== 空购物车 ==========
        Column({ space: 16 }) {
          Image($r('app.media.ic_xiaomi_logo'))
            .width(80)
            .height(80)
            .opacity(0.25)
          Text('购物车是空的')
            .fontSize(16)
            .fontColor('#999')
          Text('去逛逛吧，发现好物~')
            .fontSize(13)
            .fontColor('#bbb')
        }
        .layoutWeight(1)
        .justifyContent(FlexAlign.Center)
        .width('100%')
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor(BG_WARM)
  }
}

/**
 * 购物车商品行 - 使用 Checkbox group + Counter + @ObjectLink
 */
@Component
struct CartGoodsRow {
  @ObjectLink cartItem: CartGoods
  onCountChange: () => void = () => {
  }

  build() {
    Row({ space: 10 }) {
      // 选择框 (加入 cart 组，与 CheckboxGroup 联动)
      Checkbox({ group: 'cart', name: this.cartItem.id })
        .selectedColor(GOLD_MAIN)

      // 商品图片
      Image(this.cartItem.goods.img)
        .width(80)
        .height(80)
        .borderRadius(8)
        .margin({ left: 4 })

      // 商品信息
      Column() {
        Text(this.cartItem.goods.name)
          .fontSize(14)
          .fontWeight(FontWeight.Medium)
          .maxLines(2)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .width('100%')

        Row() {
          // 价格
          Row() {
            Text('¥')
              .fontSize(12)
              .fontColor('#d9984e')
            Text(this.cartItem.goods.price.toString())
              .fontSize(18)
              .fontColor('#d9984e')
              .fontWeight(FontWeight.Bold)
          }

          Blank()

          // 数量 Counter (内置组件)
          Counter() {
            Text(this.cartItem.count.toString())
          }
          .enableDec(this.cartItem.count > 1)
          .onInc(() => {
            this.cartItem.count++
            this.onCountChange()
          })
          .onDec(() => {
            if (this.cartItem.count > 1) {
              this.cartItem.count--
              this.onCountChange()
            }
          })
          .scale({ x: 0.85, y: 0.85 })
        }
        .width('100%')
        .margin({ top: 8 })
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
      .padding({ right: 10 })
    }
    .width('100%')
    .padding({ top: 12, bottom: 12, left: 12 })
    .backgroundColor(Color.White)
    .border({
      width: { bottom: 0.5 },
      color: '#f0ece6'
    })
  }
}
