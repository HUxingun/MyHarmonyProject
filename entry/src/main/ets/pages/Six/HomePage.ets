interface TopicItem {
  name: string;
  count: string;
}

interface TopicGroup {
  groupName: string;
  items: TopicItem[];
}

interface LabelItem {
  icon: Resource;
  text: string;
}

interface ArticleItem {
  title: string;
  date: string;
  img: Resource;
}

@Entry
@Component
struct HotPage {
  @State currentIndex: number = 0
  @State bottomBg: Resource = $r('app.media.bg_02_1')
  @State isShowTopics: boolean = false
  private labels: LabelItem[] = [
    { icon: $r('app.media.ic_01_1'), text: '内容精选' },
    { icon: $r('app.media.ic_01_2'), text: '学堂' },
    { icon: $r('app.media.ic_01_3'), text: '鸿蒙开发者社区' },
    { icon: $r('app.media.ic_01_4'), text: '博客' },
    { icon: $r('app.media.ic_01_5'), text: '企业' },
    { icon: $r('app.media.ic_01_6'), text: '资讯' },
    { icon: $r('app.media.ic_01_7'), text: '活动' }
  ]
  private banners: Resource[] = [
    $r('app.media.banner_01_1'),
    $r('app.media.banner_01_2'),
    $r('app.media.banner_01_3'),
    $r('app.media.banner_01_4')
  ]
  private articles: ArticleItem[] = [
    {
      title: '字节一面：TCP和UDP可以使用同一个端口号吗？',
      date: '2024-03-05 10:07:22',
      img: $r('app.media.list_02_1')
    },
    {
      title: 'NoSQL：在高并发场景下，数据库和NoSQL如何做到...',
      date: '2024-03-05 10:03:17',
      img: $r('app.media.list_02_2')
    },
    {
      title: '处理大规模并发请求时如何设计和优化Python后端服...',
      date: '2024-03-05 10:03:09',
      img: $r('app.media.list_02_3')
    },
    {
      title: 'C++右值引用：解锁高效内存管理与性能优化的奥秘',
      date: '2024-03-05 09:55:00',
      img: $r('app.media.list_02_4')
    },
    {
      title: '现代分布式系统架构的权衡分析',
      date: '2024-03-05 09:52:57',
      img: $r('app.media.list_02_5')
    }
  ]
  private topicGroups: TopicGroup[] = [
    {
      groupName: '开发',
      items: [
        { name: '前端', count: '数量2.3w' },
        { name: '后端', count: '数量2.5w' },
        { name: '开发工具', count: '数量7181' },
        { name: '游戏开发', count: '数量1001' },
        { name: '项目管理', count: '数量608' },
        { name: '架构', count: '数量2005' },
        { name: 'VR/AR', count: '数量100' }
      ]
    },
    {
      groupName: '人工智能',
      items: [
        { name: '机器学习', count: '数量2.3w' },
        { name: '深度学习', count: '数量2.5w' },
        { name: '算法', count: '数量7181' },
        { name: '语音识别', count: '数量1001' },
        { name: '人脸识别', count: '数量608' },
        { name: '机器视觉', count: '数量2005' },
        { name: '无人驾驶', count: '数量100' }
      ]
    }
  ]

  @Builder
  TabBuilder(text: string, index: number) {
    Column() {
      Text(text)
        .fontSize(12)
        .fontWeight(this.currentIndex === index ? FontWeight.Bold : FontWeight.Normal)
        .fontColor(this.currentIndex === index ? '#000000' : '#999999')
    }
    .justifyContent(FlexAlign.Center)
    .height('100%')
    .width('100%')
  }

  @Builder
  TopicListBuilder() {
    Column() {
      Row() {
        Text('全部话题')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
        Image($r('app.media.ic_public_cancel'))
          .width(24)
          .height(24)
          .onClick(() => {
            this.isShowTopics = false
          })
      }
      .width('100%')
      .padding({
        top: 12,
        bottom: 12,
        right: 16,
        left: 16
      })

      List() {
        ForEach(this.topicGroups, (group: TopicGroup) => {
          ListItemGroup({
            header: this.TopicHeaderBuilder(group.groupName)
          }) {
            ForEach(group.items, (item: TopicItem) => {
              ListItem() {
                Row() {
                  Row({ space: 10 }) {
                    Image($r('app.media.ic_03_title'))
                      .width(16)
                      .height(16)
                    Text(item.name)
                      .fontSize(16)
                      .fontWeight(FontWeight.Medium)
                  }

                  Text(item.count)
                    .fontSize(12)
                    .fontColor('#999')
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)
                .padding({
                  left: 16,
                  right: 16,
                  top: 12,
                  bottom: 12
                })
              }
            })
          }
          .divider({ strokeWidth: 1, color: '#f0f0f0' })
        })
      }
      .layoutWeight(1)
      .width('100%')
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }

  @Builder
  TopicHeaderBuilder(title: string) {
    Text(title)
      .width('100%')
      .padding({ left: 16, top: 12, bottom: 12 })
      .fontSize(16)
      .fontWeight(FontWeight.Bold)
      .backgroundColor('#f2f2f2')
  }

  build() {
    Stack() {
      Image(this.bottomBg)
        .width('100%')
        .height(45)
        .position({ x: 0, y: '94%' })

      Column() {
        Tabs({ barPosition: BarPosition.End }) {
          TabContent() {
            Column() {
              Row() {
                Image($r('app.media.hot_01'))
                  .width(60)
                  .height(24)
                Row({ space: 12 }) {
                  Image($r('app.media.user_01'))
                    .width(20)
                    .height(20)
                  Image($r('app.media.more_01'))
                    .width(20)
                    .height(20)
                    .onClick(() => {
                      this.isShowTopics = !this.isShowTopics
                    })
                }
              }
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)
              .padding({
                left: 12,
                right: 12,
                top: 10,
                bottom: 6
              })
              .backgroundColor(Color.White)

              Swiper() {
                ForEach(this.banners, (img: Resource) => {
                  Image(img)
                    .width('100%')
                    .height('100%')
                    .objectFit(ImageFit.Cover)
                    .borderRadius(8)
                })
              }
              .width('100%')
              .height(160)
              .autoPlay(true)
              .loop(true)
              .interval(3000)
              .indicator(
                Indicator.dot()
                  .itemWidth(6)
                  .itemHeight(6)
                  .selectedColor('#0094ff')
              )
              .margin({ bottom: 12, left: 12, right: 12 })

              Scroll() {
                Row({ space: 30 }) {
                  ForEach(this.labels, (item: LabelItem) => {
                    Column({ space: 8 }) {
                      Image(item.icon)
                        .width(36)
                        .height(36)
                      Text(item.text)
                        .fontSize(15)
                        .fontColor('#333')
                    }
                  })
                }
                .padding({ left: 12, right: 12 })
              }
              .scrollable(ScrollDirection.Horizontal)
              .scrollBar(BarState.Off)
              .width('100%')
              .height(70)

              Text('热门推荐')
                .width('100%')
                .fontSize(20)
                .fontWeight(FontWeight.Bold)
                .padding({ left: 12, top: 16, bottom: 8 })

              Scroll() {
                Column({ space: 0 }) {
                  ForEach(this.articles, (item: ArticleItem, index: number) => {
                    Column() {
                      Row() {
                        Image(item.img)
                          .width(120)
                          .height(84)
                          .borderRadius(6)
                        Column() {
                          Text(item.title)
                            .fontSize(18)
                            .fontWeight(FontWeight.Medium)
                            .maxLines(2)
                            .textOverflow({ overflow: TextOverflow.Ellipsis })
                            .margin({ bottom: 8 })
                          Text(item.date)
                            .fontSize(14)
                            .fontColor('#999')
                        }
                        .alignItems(HorizontalAlign.Start)
                        .layoutWeight(1)
                        .padding({ left: 14 })
                      }
                      .alignItems(VerticalAlign.Top)
                      .width('100%')
                      .padding({
                        left: 12,
                        right: 12,
                        top: 12,
                        bottom: 12
                      })

                      Divider()
                        .width('95%')
                        .color('#eeeeee')
                        .margin({ left: 12 })
                    }
                  })
                }
                .width('100%')
                .padding({ bottom: 20 })
              }
              .layoutWeight(1)
              .width('100%')

              Blank().height(30)
            }
            .width('100%')
            .height('100%')
          }
          .tabBar(this.TabBuilder('首页', 0))

          TabContent() {
            Stack() {
              Image($r('app.media.banner_01_4'))
                .width('100%')
                .height('100%')
                .objectFit(ImageFit.Cover)
            }
            .width('100%')
            .height('100%')
          }
          .tabBar(this.TabBuilder('视频', 1))

          TabContent() {
            Text('消息内容')
          }
          .tabBar(this.TabBuilder('消息', 2))

          TabContent() {
            Text('我的内容')
          }
          .tabBar(this.TabBuilder('我的', 3))
        }
        .layoutWeight(1)
        .barMode(BarMode.Fixed)
        .backgroundColor(Color.Transparent)
        .barHeight(44)
        .onChange((index: number) => {
          this.currentIndex = index
          this.bottomBg = index === 1 ? $r('app.media.bg_02_2') : $r('app.media.bg_02_1')
        })
      }
      .width('100%')
      .height('100%')
    }
    .width('100%')
    .height('100%')
    .bindContentCover(this.isShowTopics, this.TopicListBuilder())
  }
}