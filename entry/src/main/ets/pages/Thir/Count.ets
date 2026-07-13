@Entry
@Component
struct Index {
  @State count: number = 2
  build() {
    Column() {
      Row() {
        Text('-')
          .width(40)
          .height(40)
          .border({width: 2, color: '#999', radius: {topLeft: 3, bottomLeft:3}})
          .textAlign(TextAlign.Center)
          .borderRadius({topLeft : 8 , bottomLeft : 8})
          .onClick(() => {
            if (this.count > 1) {
              this.count--
            }
            else {
              AlertDialog.show({
                message: '最小值为1, 不能再减了'
              })
            }
          })
        Text(this.count.toString())
          .height(40)
          .padding({left: 20, right: 20 })
          .border({width: {top: 2, bottom: 2}, color: '#999'})
          .fontSize(14)
        Text('+')
          .width(40)
          .height(40)
          .border({width: 2, color: '#999', radius: {topRight: 3, bottomRight:
          3}})
          .borderRadius({topRight : 8 , bottomRight : 8})
          .textAlign(TextAlign.Center)
          .onClick(() => {
            this.count++
          })
      }
    }
    .padding(20)
  }
}