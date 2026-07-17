@Entry
@Component
struct CheckBoxGroupPage {
  fruits: string[] = ['西瓜', '西红柿', '西兰花', '西葫芦']
  @State selectedkeys: string[] = []

  build() {
    Column() {
      Text('选中的是:' + this.selectedkeys.join('、'))
        .padding({ bottom: 20 })

      Row() {
        CheckboxGroup({
          group: 'food'
        })
          .onChange((event: CheckboxGroupResult) => {
            this.selectedkeys = event.name
          })
        Text('全选')
      }
      .margin({ bottom: 10 })

      Column() {
        ForEach(this.fruits, (item: string) => {
          Row() {
            Checkbox({
              name: item,
              group: 'food'
            })
            Text(item)
          }
          .margin({ bottom: 5 })
        })
      }
      .padding({ left: 20 })
      .alignItems(HorizontalAlign.Start)
    }
    .padding(20)
    .alignItems(HorizontalAlign.Start)
    .width('100%')
    .height('100%')
  }
}