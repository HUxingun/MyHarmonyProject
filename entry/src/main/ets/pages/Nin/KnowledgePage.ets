interface Person {
  name: string
  age: number
}

@Entry
@Component
  // 父组件
struct KnowledgePage {
  @State count: number = 0
  @State p: Person = { name: 'jack', age: 18 }

  build() {
    Column() {
      Text('父组件')
        .fontSize(30)
      Text(`count:${this.count.toString()} age:${this.p.age}`)
        .fontSize(20)
      Button('修改数据')
        .onClick(() => {
          this.count++
          this.p.age++
        })
      
      SonComponent({
        count: this.count, p: this.p
      })
    }
    .padding(10)
    .height('100%')
    .backgroundColor('#ccc')
    .width('100%')
    .alignItems(HorizontalAlign.Center)
    .padding({ top: 100 })
  }
}


@Component
  // 子组件
struct SonComponent {
  @Link count: number
  @Link p: Person

  // 编写 UI
  build() {
    Column({ space: 20 }) {
      Text(`我是子组件count:${this.count.toString()} age:${this.p.age}`)
        .fontSize(20)

      Column() {
        Button('修改count')
          .onClick(() => {
            this.count++
          })
      }

    }
    .backgroundColor('#a6c398')
    .alignItems(HorizontalAlign.Center)
    .width('80%')
    .margin({ top: 100 })
    .padding(10)
    .borderRadius(10)

  }
}