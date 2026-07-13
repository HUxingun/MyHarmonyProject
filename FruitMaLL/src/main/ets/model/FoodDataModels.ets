import { Category, FoodData } from './FoodData'

// 集中导出，方便其他页面引用
export { Category, FoodData }

const FoodComposition: FoodData[] = [
  new FoodData('西红柿', $r('app.media.Tomato'), Category.Vegetable, 17, 0.9, 0.2, 3.9, 17.8),
  new FoodData('核桃仁', $r('app.media.Walnut'), Category.Nut, 654, 15, 65, 14, 1.3),
  new FoodData('黄瓜', $r('app.media.Cucumber'), Category.Vegetable, 30, 3, 0, 1.9, 2.1),
  new FoodData('蓝莓', $r('app.media.Blueberry'), Category.Fruit, 57, 0.7, 0.3, 14, 9.7),
  new FoodData('螃蟹', $r('app.media.Crab'), Category.Seafood, 97, 19, 1.5, 0, 7.6),
  new FoodData('冰淇淋', $r('app.media.IceCream'), Category.Dessert, 207, 3.5, 11, 24, 0.6),
  new FoodData('洋葱', $r('app.media.Onion'), Category.Vegetable, 39, 1.1, 0.1, 9, 7.4),
  new FoodData('蘑菇', $r('app.media.Mushroom'), Category.Vegetable, 22, 3.1, 0.3, 3.3, 2.1),
  new FoodData('猕猴桃', $r('app.media.Kiwi'), Category.Fruit, 60, 1.1, 0.5, 15, 20.5),
  new FoodData('火龙果', $r('app.media.Pitaya'), Category.Fruit, 60, 1.2, 0, 10, 60.9),
  new FoodData('牛油果', $r('app.media.Avocado'), Category.Fruit, 160, 2, 15, 9, 10),
  new FoodData('草莓', $r('app.media.Strawberry'), Category.Fruit, 32, 0.7, 0.3, 8, 58.8)
]

export function initializeOnStartup(): Array<FoodData> {
  let FoodDataArray: Array<FoodData> = []
  FoodComposition.forEach(item => {
    FoodDataArray.push(new FoodData(
      item.name,
      item.image,
      item.category,
      item.calories,
      item.protein,
      item.fat,
      item.carbohydrates,
      item.vitaminC
    ));
  })
  return FoodDataArray;
}