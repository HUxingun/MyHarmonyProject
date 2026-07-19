import { router } from '@kit.ArkUI'
import { Food, FoodList } from '../../Model/foodData'

@Entry
@Component
struct XCFDetailPage {
  @State categoryId: string = ''
  @State foods: Food[] = []
  @State categoryTitle: string = ''
  @State coverImage: string = ''

  aboutToAppear(): void {
    const params = router.getParams() as Record<string, string>
    if (params?.categoryId) {
      this.categoryId = params.categoryId
      this.foods = FoodList.filter(item => item.categoryId === this.categoryId)

      if (this.foods.length > 0) {
        this.coverImage = this.foods[0].cover
      }

      const titleMap: Record<string, string> = {
        '40076': '家常菜', '40078': '下饭菜', '51761': '烘焙',
        '2478': '肉类', '40071': '早餐', '5263': '蔬菜',
        '40077': '快手菜', '51848': '素菜', '52381': '甜品饮品',
        '40073': '小吃', '40074': '零食', '1012722': '懒人食谱',
        '52414': '一人食', '52385': '宴客', '40072': '下午茶',
        '20171': '便当', '52370': '宿舍', '51865': '宵夜'
      }
      this.categoryTitle = titleMap[this.categoryId] || '美食'
    }
  }

  build() {
    Column() {
      Stack({ alignContent: Alignment.TopStart }) {
        Image(this.coverImage)
          .width('100%')
          .height(200)
          .objectFit(ImageFit.Cover)
          .opacity(0.85)

        Image($r('app.media.ic_public_arrow_left'))
          .width(36)
          .height(36)
          .fillColor(Color.White)
          .margin({ top: 12, left: 12 })
          .onClick(() => {
            router.back()
          })

        Text(this.categoryTitle)
          .fontSize(32)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.White)
          .position({ x: 16, y: 156 })
      }
      .width('100%')
      .height(200)
      .backgroundColor(Color.Black)

      List({ space: 10 }) {
        ForEach(this.foods, (item: Food) => {
          ListItem() {
            Row({ space: 10 }) {
              Image(item.cover)
                .width(100)
                .height(80)
                .borderRadius(8)
                .objectFit(ImageFit.Cover)

              Column({ space: 4 }) {
                Text(item.title)
                  .fontSize(14)
                  .fontWeight(FontWeight.Medium)
                  .maxLines(2)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })

                Text() {
                  Span('评分: ')
                  Span(item.score)
                    .fontColor(MAIN_RED)
                  Span(`  ${item.count}人做过`)
                }
                .fontSize(12)
                .fontColor(Color.Gray)

                Row({ space: 6 }) {
                  Image(item.author.avatar)
                    .width(20)
                    .height(20)
                    .borderRadius(10)
                  Text(item.author.nickname)
                    .fontSize(12)
                    .fontColor(Color.Gray)
                }
              }
              .alignItems(HorizontalAlign.Start)
              .layoutWeight(1)
            }
            .width('100%')
            .padding(10)
            .backgroundColor(Color.White)
            .borderRadius(8)
          }
        })
      }
      .layoutWeight(1)
      .padding(10)
      .width('100%')
    }
    .height('100%')
    .backgroundColor('#f5f5f5')
  }
}

const MAIN_RED: string = '#f4304b'