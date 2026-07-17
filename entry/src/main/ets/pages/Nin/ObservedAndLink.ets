@Observed
class Person {
  id: number
  name: string
  age: number

  constructor(id: number, name: string, age: number) { //初始化
    this.id = id
    this.name = name
    this.age = age
  }
}

@Entry
@Component
struct ObservedAndLink {
  @State personList: Person[] = [
    new Person(1, '张三', 18),
    new Person(2, '李四', 18),
    new Person(3, '王五', 18),
  ]

  build() {
    Column({ space: 20 }) {
      Text('父组件')
        .fontSize(30)
      List({ space: 10 }) {
        ForEach(this.personList, (item: Person, index: number) => {
          ItemCom({
            info: item,
            addAge: () => {
              item.age++
            }
          })
        })
      }
    }
    .backgroundColor('#cbe69b')
    .width('100%')
    .height('100%')
    .padding(20)
  }
}

@Component
struct ItemCom {
  @ObjectLink info: Person
  addAge = () => {
  }

  build() {
    ListItem() {
      Row({ space: 10 }) {
        Text('姓名:' + this.info.name)
        Text('年龄:' + this.info.age)
        Blank()
        Button('修改数据')
          .onClick(() => {
            this.addAge()
          })
      }
      .backgroundColor(Color.Pink)
      .padding(10)
      .width('100%')
    }
  }
}