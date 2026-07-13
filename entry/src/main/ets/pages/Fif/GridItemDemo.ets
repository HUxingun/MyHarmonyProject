@Entry
@Component
struct GridItemDemo {
  nums:number[]=Array.from({length:12})

  build() {
    Grid(){
      ForEach(this.nums,(items:number,index:number)=>{
        if(index===2){
          GridItem(){
            Text(index+'')
              .fontColor(Color.White)
              .fontSize(30)
          }
          .backgroundColor('#9dc3e6')
          .columnStart(3).columnEnd(4)
        }else if(index===3){
          GridItem() {
            Text(index + '')
              .fontColor(Color.White)
              .fontSize(30)
          }.backgroundColor('#9dc3e6')
          .rowStart(2).rowEnd(3)
        }else if(index===7){
          GridItem() {
            Text(index + '')
              .fontColor(Color.White)
              .fontSize(30)
          }.backgroundColor('#9dc3e6')
          .columnStart(2).columnEnd(4)
        }else {
          GridItem(){
            Text(index+'')
              .fontColor(Color.White)
              .fontSize(30)
          }.backgroundColor('#9dc3e6')
        }
      })
    }
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .rowsTemplate('1fr 1fr 1fr 1fr')
    .width('100%')
    .height(260)
    .rowsGap (10)
    .columnsGap(10)
    .padding (10)
  }
}