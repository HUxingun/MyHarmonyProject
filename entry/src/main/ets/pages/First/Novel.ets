@Entry
@Component
struct Novel {
  build() {
    Column(){
      Column(){
        Blank()
          .height(40)
        Image($r('app.media.story'))
          .width(150)
        Text('帝师县令')
          .fontFamily('SimSun')
          .fontColor('#000')
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
        Text('202万字')
          .fontColor('#666')
          .fontSize(14)
        Text('       兵荒马乱的世道，赵康一朝穿越成乾' +
          '国九品县令。胸无大志的他并不想争霸天' +
          '下，只想当个混吃等死，为非作歹的土皇' +
          '帝。于是，在元江县出现了许多奇奇怪怪' +
          '的东西，老八洗浴城、二狗麻将馆、张三')
          .fontSize(16)
          .fontColor('#666')
          .width('80%')
          .fontFamily('KaiTi')
      }
    }
    .height('100%')
    .width('100%')
  }
}