import { FoodData, Category, initializeOnStartup } from '../model/FoodDataModels'
import router from '@ohos.router'

@Entry
@Component
struct FoodCategoryList {
  private foodItems: FoodData[] = initializeOnStartup()
  @State private showList: boolean = false

  build() {
    Stack({ alignContent: Alignment.TopEnd }) {
      if (this.showList) {
        FoodList({ foodItems: this.foodItems })
      } else {
        FoodCategory({ foodItems: this.foodItems })
      }
      Image($r("app.media.Switch"))
        .height(30)
        .width(30)
        .margin({ top: 15, right: 10 })
        .onClick(() => {
          this.showList = !this.showList
        })
    }
    .height('100%')
  }
}
@Component
struct FoodList {
  foodItems: FoodData[] = []

  build() {
    Column() {
      Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
        Text("水果列表")
          .fontSize(22)
          .margin({ left: 20 })
      }
      .height('7%')
      .backgroundColor("#fff")

      List() {
        ForEach(this.foodItems, (item: FoodData) => {
          ListItem() {
            FoodListItem({ foodItem: item })
          }
        }, (item: FoodData) => item.id.toString())
      }
      .height('93%')
    }
  }
}

@Component
struct FoodListItem {
  foodItem: FoodData = null!

  build() {
    Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
      Image(this.foodItem.image)
        .objectFit(ImageFit.Contain)
        .height(60)
        .width(60)
        .margin({ right: 16 })
      Text(this.foodItem.name)
        .fontSize(14)
        .flexGrow(1)
      Text(this.foodItem.calories + ' Kcal')
        .fontSize(14)
    }
    .height(64)
    .margin({ right: 24, left: 32 })
    .onClick(() => {
      router.pushUrl({
        url: 'pages/FoodDetail',
        params: { item: this.foodItem }
      })
    })
  }
}

@Component
struct FoodCategory {
  foodItems: FoodData[] = []

  build() {
    Stack() {
      Tabs() {
        TabContent() {
          FoodGrid({ foodItems: this.foodItems })
        }.tabBar("所有食物")
        TabContent() {
          FoodGrid({ foodItems: this.foodItems.filter(item => item.category == Category.Vegetable) })
        }.tabBar("蔬菜")
        TabContent() {
          FoodGrid({ foodItems: this.foodItems.filter(item => item.category == Category.Fruit) })
        }.tabBar("水果")
        TabContent() {
          FoodGrid({ foodItems: this.foodItems.filter(item => item.category == Category.Nut) })
        }.tabBar("坚果")
        TabContent() {
          FoodGrid({ foodItems: this.foodItems.filter(item => item.category == Category.Seafood) })
        }.tabBar("海鲜")
        TabContent() {
          FoodGrid({ foodItems: this.foodItems.filter(item => item.category == Category.Dessert) })
        }.tabBar("甜品")
      }
      .barWidth(280)
      .barMode(BarMode.Scrollable)
    }
  }
}

@Component
struct FoodGrid {
  foodItems: FoodData[] = []
  private gridRowTemplate: string = ''
  private heightValue: number = 0

  aboutToAppear() {
    let rows = Math.round(this.foodItems.length / 2);
    this.gridRowTemplate = '1fr '.repeat(rows);
    this.heightValue = rows * 192 - 8;
  }

  build() {
    Scroll() {
      Grid() {
        ForEach(this.foodItems, (item: FoodData) => {
          GridItem() {
            FoodGridItem({ foodItem: item })
          }
        }, (item: FoodData) => item.id.toString())
      }
      .rowsTemplate(this.gridRowTemplate)
      .columnsTemplate('1fr 1fr')
      .columnsGap(8)
      .rowsGap(8)
      .height(this.heightValue)
    }
    .scrollBar(BarState.Off)
    .padding({ left: 16, right: 16 })
  }
}

@Component
struct FoodGridItem {
  foodItem: FoodData = null!

  build() {
    Column() {
      Row() {
        Image(this.foodItem.image)
          .objectFit(ImageFit.Contain)
          .height(152)
          .width('100%')
      }
      Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
        Text(this.foodItem.name)
          .fontSize(14)
          .flexGrow(1)
          .padding({ left: 8 })
        Text(this.foodItem.calories + ' Kcal')
          .fontSize(14)
          .margin({ right: 6 })
      }
      .height(32)
      .width('100%')
      .backgroundColor('#ffe5e5e5')
    }
    .height(184)
    .width('100%')
    .onClick(() => {
      router.pushUrl({
        url: 'pages/FoodDetail',
        params: { item: this.foodItem }
      })
    })
  }
}