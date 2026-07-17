@Entry
@Component
struct CheckBoxPage {
  @State isChecked: boolean = false

  build() {
    Column() {
      Text('选中状态:' + this.isChecked)
      Row() {
        Checkbox()
          .borderWidth(0)
          .selectedColor('#ab8b53')
          .select($$this.isChecked)
        Text() {
          Span('已阅读并同意')
            .fontColor(Color.Gray)
          Span('《用户协议》')
          Span('《隐私协议》')
        }
        .fontSize(14)
        .fontColor('#0094ff')
      }

      Button('切换选中状态')
        .onClick(() => {
          this.isChecked = !this.isChecked
        })
    }
    .padding(20)
  }
}