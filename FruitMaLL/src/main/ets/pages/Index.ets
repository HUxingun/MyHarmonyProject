@Entry
@Component
struct Index {
  build() {
    Column(){
      FoodImageDisplay()
      ContentTable()
    }.alignItems(HorizontalAlign.Center)
  }
}

@Component
struct ContentTable {
  //自定义方法
  @Builder IngredientItem(title:string,name:string,value:string){
    Flex() {
      Text(title).fontSize(17.4).fontWeight(FontWeight.Bold).layoutWeight(1)
      Flex({alignItems:ItemAlign.Center}) {
        Text(name).fontSize(17.4).flexGrow(1)
        Text(value).fontSize(17.4)
      }.layoutWeight(2)
    }
  }
  build() {
    Flex({
      direction:FlexDirection.Column,justifyContent:FlexAlign.SpaceBetween,
      alignItems: ItemAlign.Start}) {
      //热量类 Calories
      this.IngredientItem("热 量","Calories","17Kcal")
      //营养成分部分（Nutrition）
      this.IngredientItem("营养成分","Protein","0.9g")
      //蛋白质（Protein）
      this.IngredientItem("蛋白质","Fat","0.2g")
      //碳水化合物（Carbohydrates）
      this.IngredientItem(" ","碳水化合物","3.9g")
      //维生素C（VitaminC）
      this.IngredientItem(" ","维生素C","17.8mg")
    }.height(280).padding({ top: 30, right: 30, left: 30 })
  }
}
@Component
struct FoodImageDisplay{
  build(){
    Stack( {alignContent: Alignment.BottomStart}){
      Image($r("app.media.Tomato"))
        .objectFit(ImageFit.Contain)
      Text('西红柿')
        .fontSize(26)
        .fontWeight(500)
        .margin({left:26,bottom:17.4})
    }.height(357)
  }
}