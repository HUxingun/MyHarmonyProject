@Entry
@Component
struct Jieduan {
  @Builder showText(txt:string){
    Text(txt)
      .padding(10)
      .margin(5)
      .backgroundColor('#F6F7F9')
      .borderRadius(4)
  }
  build() {
    Column(){
      Text('阶段选择').fontSize(32)
        .fontWeight(900)
        .width('100%')
        .margin(10)
        .textAlign(TextAlign.Start)
      Flex({wrap:FlexWrap.Wrap}){
        this.showText('ArkUI')
        this.showText('ArkTS')
        this.showText('界面开发')
        this.showText('系统能力')
        this.showText('权限控制')
        this.showText('元服务')
      }
    }.padding(30)
  }
}