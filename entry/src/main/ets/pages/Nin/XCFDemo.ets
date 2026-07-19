import { router } from '@kit.ArkUI'
import { Category, CategoryContainer } from '../../Model/foodData'

@Entry
@Component
struct XCFDemo {
  private categoryList: CategoryContainer[] = CategoryContainer.getCategoryContainerList()

  build() {
    Column() {
      Image($r('app.media.ic_public_XCF_TOP'))
        .width('100%')

      Scroll() {
        Column({ space: 30 }) {
          ForEach(this.categoryList, (container: CategoryContainer) => {
            Column({ space: 15 }) {
              Text(container.title)
                .fontSize(18)
                .fontWeight(FontWeight.Bold)
                .alignSelf(ItemAlign.Start)
                .padding({ left: 20 })

              Grid() {
                ForEach(container.categorizes, (item: Category) => {
                  GridItem() {
                    Stack({ alignContent: Alignment.Bottom }) {
                      Image(item.cover)
                        .width('100%')
                        .height('100%')
                        .objectFit(ImageFit.Cover)
                      Text(item.title)
                        .fontSize(14)
                        .fontColor(Color.White)
                        .padding({ bottom: 10 })
                    }
                    .borderRadius(10)
                    .clip(true)
                    .width('100%')
                    .aspectRatio(1)
                  }
                  .onClick(() => {
                    router.pushUrl({
                      url: 'pages/Nin/XCFDetailPage',
                      params: { categoryId: item.id }
                    }, router.RouterMode.Single)
                  })
                })
              }
              .columnsTemplate('1fr 1fr 1fr')
              .columnsGap(10)
              .rowsGap(10)
              .padding({ left: 20, right: 20 })
              .height(240)
            }
          })
        }
        .padding({ bottom: 20 })
      }
      .layoutWeight(1)
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)

      Image($r('app.media.ic_public_XCF_Bottom'))
        .width('100%')
    }
    .height('100%')
  }
}