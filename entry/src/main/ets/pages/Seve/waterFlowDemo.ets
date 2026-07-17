@Entry
@Component
struct waterFlowDemo {
  list: string[] = Array.from({ length: 150 })

  getRandomNumber() {
    return Math.floor(Math.random() * (300 - 200 + 1)) + 200;
  }

  getRandomColor(): ResourceColor {
    const r = Math.floor(Math.random() * 256);
    const g = Math.floor(Math.random() * 256);
    const b = Math.floor(Math.random() * 256);
    return `rgba(${r}, ${g}, ${b}, 0.5)`;
  }

  build() {
    WaterFlow() {
      ForEach(this.list, (item: string) => {
        FlowItem() {
        }
        .width('100%')
        .height(this.getRandomNumber())
        .backgroundColor(this.getRandomColor())
      })

      FlowItem() {
        this.leadMore()
      }
      .width('100%')
      .height(80)
    }
    .columnsTemplate('1fr 1fr')
    .columnsGap(10)
    .rowsGap(10)
  }

  @Builder
  leadMore() {
    Text('加载更多...')
      .width('100%')
      .fontSize(30)
      .fontColor(Color.White)
      .backgroundColor(Color.Blue)
  }
}