interface ReplyItem {
  id: number
  avatar: ResourceStr
  author: string
  content: string
  time: string
  area: string
  likeNum: number
  likeFlag: boolean
}

class ReplyData {
  static getCommentList(): ReplyItem[] {
    return [
      {
        id: 1,
        avatar: 'https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_.jpg?source=06d4cd63',
        author: '偏执狂-妄想家',
        content: '更何况还分到一个摩洛哥[惊喜]',
        time: '11-30',
        area: '海南',
        likeNum: 34,
        likeFlag: false
      },
      {
        id: 2,
        avatar: 'https://pic1.zhimg.com/v2-5a3f5190369ae59c12bee33abfe0c5cc_xl.jpg?source=32738c0c',
        author: 'william',
        content: '当年希腊可是把1：0发挥到极致了',
        time: '11-29',
        area: '北京',
        likeNum: 58,
        likeFlag: true
      },
      {
        id: 3,
        avatar: 'https://picx.zhimg.com/v2-e6f4605c16e4378572a96dad7eaaf2b0_l.jpg?source=06d4cd63',
        author: 'Andy Garcia',
        content: '欧洲杯其实16队球队打正赛已经差不多，24队打正赛意味着正赛阶段在小组赛一样有弱队。',
        time: '11-28',
        area: '上海',
        likeNum: 10,
        likeFlag: false
      },
      {
        id: 4,
        avatar: 'https://picx.zhimg.com/v2-53e7cf84228e26f419d924c2bf8d5d70_l.jpg?source=06d4cd63',
        author: '正宗好鱼头',
        content: '确实眼红啊，亚洲就没这种球队，让中国队刷',
        time: '11-27',
        area: '香港',
        likeNum: 139,
        likeFlag: true
      },
      {
        id: 5,
        avatar: 'https://pic1.zhimg.com/v2-eedfdae049df2a407ff37540894c8ce_l.jpg?source=06d4cd63',
        author: '我是支持扩大的',
        content: '亚洲杯欧洲杯扩到32队，世界杯扩到64队才是好的，世界上有超过200支队伍，欧洲区55支队伍，亚洲区47支队伍，即使如此也就六成出线率',
        time: '11-27',
        area: '旧金山',
        likeNum: 29,
        likeFlag: false
      },
      {
        id: 6,
        avatar: 'https://picx.zhimg.com/v2-fab3da929232ae911e92bf8137d11f3a_l.jpg?source=06d4cd63',
        author: '飞轩半笔',
        content: '禁止欧洲杯扩军之前，应该先禁止世界杯扩军，或者至少把亚洲名额一半给欧洲。',
        time: '11-26',
        area: '里约',
        likeNum: 100,
        likeFlag: false
      }
    ]
  }

  static getRootComment(): ReplyItem {
    return {
      id: 1,
      avatar: $r('app.media.avatar'),
      author: '周杰伦',
      content: '意大利排面应该使用42号钢筋混凝土再加上量子力学缠绕最后通过不悬浮云遮望眼',
      time: '11-30',
      area: '海南',
      likeNum: 98,
      likeFlag: true
    }
  }
}

@Entry
@Component
struct ZhiHu {
  @State commentList: ReplyItem[] = ReplyData.getCommentList()
  @State rootComment: ReplyItem = ReplyData.getRootComment()

  build() {
    Stack({ alignContent: Alignment.Bottom }) {
      Column() {
        Scroll() {
          Column() {
            HmNavBar()
            CommentItem({
              item: this.rootComment,
              changeLike: () => {
                this.rootComment.likeFlag = !this.rootComment.likeFlag
                if (this.rootComment.likeFlag == true) {
                  this.rootComment.likeNum++
                } else {
                  this.rootComment.likeNum--
                }
              }
            })
            Divider()
              .strokeWidth(6)
              .color('#f4f5f6')
            ReplyCount({ count: this.commentList.length })
            ForEach(this.commentList, (item: ReplyItem, index: number) => {
              CommentItem({
                item: item,
                changeLike: () => {
                  item.likeFlag = !item.likeFlag
                  if (item.likeFlag == true) {
                    item.likeNum++
                  } else {
                    item.likeNum--
                  }
                  this.commentList.splice(index, 1, item)
                }
              })
            })
            Blank().height(80)
          }
          .width('100%')
        }
        .backgroundColor(Color.White)
        .padding({ top: 60 })
        .edgeEffect(EdgeEffect.Spring)
        .scrollBar(BarState.Off)
        .height('100%')
      }

      ReplyInput({
        addReply: (inputValue: string) => {
          this.commentList.unshift({
            id: Date.now(),
            avatar: $r('app.media.avatar'),
            author: '花姐',
            content: inputValue,
            time: `${new Date().getMonth() + 1}-${new Date().getDate()}`,
            area: '江西',
            likeNum: 0,
            likeFlag: false
          })
        }
      })
    }
    .height('100%')
  }
}

@Component
struct HmNavBar {
  build() {
    Row() {
      Image($r('app.media.arrow_left'))
        .width(20)
        .height(20)
        .borderRadius(20)
        .backgroundColor('#f6f6f6')
        .width(30)
        .aspectRatio(1)
        .margin({ left: 15 })
      Text("评论回复")
        .layoutWeight(1)
        .textAlign(TextAlign.Center)
        .padding({ right: 35 })
    }
    .width('100%')
    .height(50)
    .border({ width: { bottom: 1 }, color: '#f6f6f6' })
  }
}

@Component
struct CommentItem {
  @Prop item: ReplyItem
  changeLike: () => void = () => {
  }

  build() {
    Row() {
      Image(this.item.avatar)
        .width(32)
        .height(32)
        .borderRadius(16)
      Column({ space: 10 }) {
        Text(this.item.author)
          .fontWeight(600)
        Text(this.item.content)
          .lineHeight(20)
          .fontSize(14)
          .fontColor('#565656')
        Row() {
          Text(`${this.item.time} · IP属地 ${this.item.area}`)
            .fontSize(12)
            .fontColor('#999999')
          Row() {
            Image($r('app.media.like'))
              .width(14)
              .height(14)
              .fillColor(this.item.likeFlag ? Color.Red : '#999999')
              .onClick(() => {
                this.changeLike()
              })
            Text(this.item.likeNum.toString())
              .fontSize(12)
              .margin({ left: 5 })
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
    }
    .width('100%')
    .padding(15)
    .alignItems(VerticalAlign.Top)
  }
}

@Component
struct ReplyCount {
  @Prop count: number

  build() {
    Text() {
      Span('回复 ')
      Span(`${this.count}`)
    }
    .padding(15)
    .fontWeight(700)
    .alignSelf(ItemAlign.Start)
  }
}

@Component
struct ReplyInput {
  @State inputValue: string = ''
  addReply: (inputStr: string) => void = () => {
  }

  build() {
    Row() {
      TextInput({ text: $$this.inputValue, placeholder: '回复' })
        .layoutWeight(1)
        .backgroundColor('#f4f5f6')
        .borderRadius(40)
        .fontSize(14)
        .margin({ left: 10 })
      Text('发布')
        .fontSize(14)
        .fontColor('#6ecff0')
        .margin({ left: 10 })
        .onClick(() => {
          this.addReply(this.inputValue)
          this.inputValue = ''
        })
    }
    .width('100%')
    .padding(10)
    .backgroundColor(Color.White)
    .border({ width: { top: 1 }, color: '#f4f5f6' })
  }
}