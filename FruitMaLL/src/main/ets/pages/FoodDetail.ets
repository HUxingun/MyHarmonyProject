import { FoodData } from '../model/FoodDataModels'
import router from '@ohos.router'

interface RouteParams {
  item: FoodData
}

@Component
struct PageTitle {
  build() {
    Flex({ alignItems: ItemAlign.Start }) {
      Image($r('app.media.Back'))
        .width(21.8)
        .height(19.6)
      Text('商品详情')
        .fontSize(21.8)
        .margin({ left: 17.4 })
    }
    .height(61)
    .padding({ top: 13, bottom: 15, left: 28.3 })
    .onClick(() => {
      router.back()
    })
  }
}

@Component
struct FoodImageDisplay {
  foodItem: FoodData = null!

  build() {
    Stack({ alignContent: Alignment.BottomStart }) {
      Image(this.foodItem.image)
        .objectFit(ImageFit.Contain)
        .height(357)
      Text(this.foodItem.name)
        .fontSize(26)
        .fontWeight(500)
        .margin({ left: 26, bottom: 17.4 })
    }
    .height(357)
  }
}

@Component
struct ContentTable {
  foodItem: FoodData = null!

  @Builder IngredientItem(title: string, name: string, value: string) {
    Flex() {
      Text(title)
        .fontSize(17.4)
        .fontWeight(FontWeight.Bold)
        .layoutWeight(1)
      Flex({ alignItems: ItemAlign.Center }) {
        Text(name)
          .fontSize(17.4)
          .flexGrow(1)
        Text(value)
          .fontSize(17.4)
      }
      .layoutWeight(2)
    }
  }

  build() {
    Flex({
      direction: FlexDirection.Column,
      justifyContent: FlexAlign.SpaceBetween,
      alignItems: ItemAlign.Start
    }) {
      this.IngredientItem('热量', '卡路里', this.foodItem.calories + 'kcal')
      this.IngredientItem('营养成分', '蛋白质', this.foodItem.protein + 'g')
      this.IngredientItem('', '脂肪', this.foodItem.fat + 'g')
      this.IngredientItem('', '碳水化合物', this.foodItem.carbohydrates + 'g')
      this.IngredientItem('', '维生素', this.foodItem.vitaminC + 'mg')
    }
    .height(280)
    .padding({ top: 30, right: 30, left: 30 })
  }
}

@Entry
@Component
struct FoodDetail {
  private foodItem: FoodData = null!

  aboutToAppear() {
    const params = router.getParams() as RouteParams

    if (params && params.item) {
      this.foodItem = params.item
    } else {
      // 兜底数据
      this.foodItem = new FoodData('西红柿', $r('app.media.Tomato'), 0, 17, 0.9, 0.2, 3.9, 17.8)
    }
  }

  build() {
    Scroll() {
      Column() {
        Stack({ alignContent: Alignment.TopStart }) {
          FoodImageDisplay({ foodItem: this.foodItem })
          PageTitle()
        }
        ContentTable({ foodItem: this.foodItem })
      }
      .alignItems(HorizontalAlign.Center)
      .width('100%')
    }
    .width('100%')
    .height('100%')
    .scrollBar(BarState.Auto) // 显示滚动条
  }
}