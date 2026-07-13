interface FruitItem {
  id: number;
  image: Resource;
  name: string;
  discountText: string;
  price: number;
  originalPrice: number;
}

@Entry
@Component
struct FruitShopCard {
  @State fruitList: FruitItem[] = [
    { id: 1, image: $r("app.media.product1"), name: "500ml燕麦酸奶水果捞", discountText: "规格：手工秘制原味", price: 28.8, originalPrice: 0 } as FruitItem,
    { id: 2, image: $r("app.media.product3"), name: "秘制原味 酸奶水果捞 550ml", discountText: "规格：500毫升", price: 21.8, originalPrice: 27.8 } as FruitItem,
    { id: 3, image: $r("app.media.product4"), name: "冲销量 1000ml缤纷八果水果捞", discountText: "含一份折扣商品", price: 19.9, originalPrice: 38.8 } as FruitItem
  ];


  @State counts: number[] = [0, 0, 0];
  @State totalCount: number = 0;
  @State totalPrice: number = 0;
  @State totalDiscount: number = 0;

  aboutToAppear() {
    this.updateTotals();
  }

  updateTotals() {
    let count = 0;
    let price = 0;
    let discount = 0;

    for (let i = 0; i < this.fruitList.length; i++) {
      count += this.counts[i];
      price += this.fruitList[i].price * this.counts[i];
      discount += (this.fruitList[i].originalPrice - this.fruitList[i].price) * this.counts[i];
    }

    this.totalCount = count;
    this.totalPrice = price;
    this.totalDiscount = discount;
  }

  build() {
    Column() {
      List({ space: 10 }) {
        ForEach(this.fruitList, (item: FruitItem, index: number) => {
          ListItem() {
            Row() {
              Image(item.image)
                .width('33%')
                .height(100)
                .borderRadius(10)
                .objectFit(ImageFit.Cover)

              Column() {
                Text(item.name)
                  .fontSize(16)
                  .maxLines(2)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
                  .textAlign(TextAlign.Start)
                  .margin({ bottom: 4, right: 40 })
                Text(item.discountText)
                  .fontSize(14)
                  .fontColor("#888888")
                  .margin({ bottom: 12 })
                  .textAlign(TextAlign.Start)
                  .alignSelf(ItemAlign.Start)

                Row() {
                  Row() {
                    Text(`¥${item.price.toFixed(1)}`)
                      .fontSize(16)
                      .fontColor("#ff4500")
                      .fontWeight(FontWeight.Bold)

                    if (item.originalPrice > 0) {
                      Text(`¥${item.originalPrice.toFixed(1)}`)
                        .fontSize(16)
                        .fontColor("#aaaaaa")
                        .decoration({ type: TextDecorationType.LineThrough })
                        .margin({ left: 12 })
                    }
                  }
                  .layoutWeight(1)

                  Row() {
                    Text('-')
                      .width(30)
                      .height(30)
                      .fontSize(20)
                      .fontColor(this.counts[index] > 0 ? "#ff4500" : "#cccccc")
                      .textAlign(TextAlign.Center)
                      .border({ width: 1, color: '#e1e1e1', radius: { topLeft: 5, bottomLeft: 5 } })
                      .onClick(() => {
                        if (this.counts[index] > 0) {
                          this.counts[index]--;
                          this.counts = [...this.counts];  // 触发更新
                          this.updateTotals();
                        }
                      })

                    Text(this.counts[index].toString())
                      .height(30)
                      .padding({ left: 10, right: 10 })
                      .fontSize(14)
                      .border({ width: { top: 1, bottom: 1 }, color: '#e1e1e1' })

                    Text('+')
                      .width(30)
                      .height(30)
                      .fontSize(20)
                      .fontColor("#ff4500")
                      .textAlign(TextAlign.Center)
                      .border({ width: 1, color: '#e1e1e1', radius: { topRight: 5, bottomRight: 5 } })
                      .onClick(() => {
                        this.counts[index]++;
                        this.counts = [...this.counts];
                        this.updateTotals();
                      })
                  }
                }
                .width("100%")
              }
              .layoutWeight(1)
              .padding({ left: 20 })
              .constraintSize({ minWidth: 0 })
            }
            .width("100%")
            .padding(20)
            .alignItems(VerticalAlign.Center)
            .backgroundColor("#f5f5f5")
          }
        }, (item: FruitItem): string => item.id.toString())
      }
      .width("100%")
      .listDirection(Axis.Vertical)
      .padding({ top: 10, bottom: 10 })

      Row() {
        Image($r('app.media.ic_quan'))
          .width(20)
          .height(20)
          .fillColor('#E8A87C')

        Text('领券结算最高再减3.00元')
          .fontSize(15)
          .fontWeight(FontWeight.Bold)
          .fontColor('#E8A87C')
          .layoutWeight(1)
          .margin({ left: 5 })

        Text('领取')
          .fontSize(15)
          .fontWeight(FontWeight.Bold)
          .fontColor('#E8A87C')
          .border({ width: 1, color: '#E8A87C', style: BorderStyle.Solid })
          .borderRadius(20)
          .padding({ left: 12, right: 12, top: 4, bottom: 4 })
      }
      .width("100%")
      .padding({ left: 20, right: 20, top: 12, bottom: 12 })
      .backgroundColor('#FFF5EE')
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Blank()
        Column() {
          Row() {
            Text("已选 ")
              .fontSize(14)
            Text(`${this.totalCount}`)
              .fontSize(14)
              .fontColor("#ff4500")
              .fontWeight(FontWeight.Bold)
            Text(" 件，合计: ")
              .fontSize(14)
            Text(`¥${this.totalPrice.toFixed(1)}`)
              .fontSize(14)
              .fontColor("#ff4500")
              .fontWeight(FontWeight.Bold)
          }
          Text(`共减 ¥${this.totalDiscount.toFixed(1)}`)
            .fontSize(10)
            .fontColor("#ff4500")
            .margin({ top: 6 })
            .alignSelf(ItemAlign.End)
        }
        .alignItems(HorizontalAlign.End)
        Button("结算外卖")
          .fontSize(16)
          .backgroundColor("#ffcc00")
          .fontColor("#333333")
          .borderRadius(50)
          .padding({ left: 25, right: 25, top: 16, bottom: 16 })
          .margin({ left: 16 })
      }
      .width("100%")
      .padding(20)
    }
    .width("100%")
    .backgroundColor("#fff")
  }
}