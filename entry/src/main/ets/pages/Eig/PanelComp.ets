@Component
struct PanelComp {
  title: string = ''
  more: string = ''
  @BuilderParam contentBuilder: () => void = this.defaultContentBuilder
  clickHandler: () => void = () => {
    console.log('传入的逻辑')
    AlertDialog.show({ message: '默认提示' })
  }

  @Builder
  defaultContentBuilder() {
    Text('默认的内容...')
  }

  build() {
    Column() {
      Row() {
        Text(this.title)
          .layoutWeight(1)
          .fontWeight(600)
        Row() {
          Text(this.more)
            .fontSize(14)
            .fontColor('#666666')
            .onClick(() => {
              this.clickHandler()
            })
          Image($r('app.media.ic_public_arrow_right'))
            .width(16)
            .fillColor('#666666')
        }
      }
      .padding(10)

      Row() {
        this.contentBuilder()
      }
      .height(100)
    }
    .borderRadius(12)
    .backgroundColor('#fff')
  }
}

@Entry
@Component
struct Index {
  @Builder
  textBuilder() {
    Row() {
      Image($r('app.media.ic_public_user')).width(35)
      Text('dddd')
    }
  }

  build() {
    Column({ space: 15 }) {
      PanelComp({
        title: '评价（2000+）', more: '好评率98%', clickHandler() {
          console.log('传入的逻辑')
        }
      }) {
        this.textBuilder()
        /*Text('传入的标题')
          .fontSize(20)
          .fontWeight(600)
          .fontColor(Color.White)
          .backgroundColor(Color.Blue)
          .padding(10)*/
      }

      Row({ space: 15 }) {
        PanelComp({ title: '推荐', more: '查看全部' })
          .layoutWeight(1)
        PanelComp({ title: '体验', more: '4 条测评' })
          .layoutWeight(1)
      }
    }
    .height('100%')
    .padding(15)
    .backgroundColor('#f5f5f5')
  }
}