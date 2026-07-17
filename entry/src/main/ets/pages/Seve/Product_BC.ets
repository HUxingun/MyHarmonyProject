interface IProduct {
  name: string
  price: number
  description: string
}

interface Book extends IProduct {
  author: string
  pages: number
}

interface Clothing extends IProduct {
  size: string
  color: string
}

class ProductList<T extends IProduct> {
  private products: T[]

  constructor(products: T[]) {
    this.products = products
  }

  render(): void {
    for (let i = 0; i < this.products.length; i++) {
      const item = this.products[i]
      console.log('商品序号：', i + 1)
      console.log('商品名：', item.name)
      console.log('商品价格：', item.price)
      console.log('商品描述：', item.description)
      console.log('--------------------')
    }
  }
}

const books: Book[] = [
  {
    name: "三国演义",
    price: 10,
    description: "《三国演义》与《西游记》《水浒传》《红楼梦》并称为中国古典四大名著。",
    author: "罗贯中",
    pages: 688
  },
  {
    name: "西游记",
    price: 12,
    description: "西游记》是中国古代第一部浪漫主义章回体长篇神魔小说",
    author: "吴承恩",
    pages: 500
  }
]

const clothing: Clothing[] = [
  {
    name: "T恤",
    price: 15,
    description: "T恤（体恤），又称T恤衫（体恤衫）、T字衫，是春夏季人们最喜欢的服装之一",
    size: "M",
    color: "Blue"
  }
]

@Entry
@Component
struct ProductTest {
  build() {
    Column() {
      Button('打印图书信息').onClick(() => {
        const bookList = new ProductList<Book>(books)
        bookList.render()
      })

      Button('打印服装信息').onClick(() => {
        const clothingList = new ProductList<Clothing>(clothing)
        clothingList.render()
      })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}