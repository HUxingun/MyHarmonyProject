interface Food {
  name: string
  children?: Food[]
  info?: string[]
}

const foodData: Food[] = [
  {
    name: '肉类',
    info: ['牛肉', '鸡肉', '鸭肉']
  },
  {
    name: '蔬菜',
    children: [
      {
        name: '叶菜类',
        info: ['白菜', '菠菜']
      },
      {
        name: '块根类',
        info: ['土豆', '马铃薯']
      },
    ]
  },
  {
    name: '面食类',
    children: [
      {
        name: '饺子类',
        info: ['水饺', '煎饺', '蒸饺']
      },
      {
        name: '面条类',
        children: [
          {
            name: '中餐面条',
            info: ['挂面', '板面', '拉面', '阳春面', '重庆小面']
          },
          {
            name: '西式面条',
            info: ['意大利面', '日式拉面', '越南河粉']
          }
        ]
      },
    ]
  }
]

function getFoods(foods: Food[]): string[] {
  const totalFoods: string [] = []

  const formatDate = (foods: Food[]) => {
    for (let index = 0; index < foods.length; index++) {
      const currentFood = foods[index]
      if (currentFood.info) {
        totalFoods.push(...currentFood.info)
      }
      if (currentFood.children) {
        formatDate(currentFood.children)
      }
    }
  }

  formatDate(foods)

  return totalFoods
}

console.log('', getFoods(foodData))

@Entry
@Component
struct FoodInfo {
  build() {

  }
}