@Extend(Text)
function textExtend(bcColor:Color,info:string){
  .textAlign(TextAlign.Center)
  .backgroundColor(bcColor)
  .fontColor(Color.White)
  .fontSize(20)
  .onClick(()=>{
    AlertDialog.show({message:info})
  })
}
@Entry
@Component
struct ExtendDemo {
  build() {
    Swiper(){
      Text('111').textExtend(Color.Red,'轮播111')
      Text('222').textExtend(Color.Red,'轮播222')
      Text('333').textExtend(Color.Red,'轮播333')
      Text('444').textExtend(Color.Red,'轮播444')
    }.width('100%').height(160)
  }
}