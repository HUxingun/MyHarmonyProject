interface Product {
  name: string;
  image: Resource;
  price: number;
  quantity: number;
  isSelected: boolean;
}

@Component
struct HomeWork {
  private product: Product = {
    name: '750ml 奥利奥酸奶水果捞',
    image: $r('app.media.fruit'),
    price: 36.8,
    quantity: 1,
    isSelected: true
  };

  build() {
    Column() {
      Text('作业4')
        .fontSize(30)
          .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Image(this.product.image)
        .width(150)
        .height(150)
        .margin({ bottom: 10 })

      Text('商品名称：' + this.product.name)
        .fontSize(18)
        .margin({ bottom: 5 })
      Text('价格：¥' + this.product.price)
        .fontSize(18)
        .margin({ bottom: 5 })
      Text('数量：' + this.product.quantity)
        .fontSize(18)
        .margin({ bottom: 5 })
      Text('是否选中：' + (this.product.isSelected ? '是' : '否'))
        .fontSize(18)
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}

export default HomeWork;