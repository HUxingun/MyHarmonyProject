@Entry
@Component
struct zhifubao{
  build(){
    Stack({ alignContent: Alignment.Bottom }){
      Stack({ alignContent: Alignment.Top }){
        //顶部组件
        HeadComponent()
        Scroll() {
          Column() {
            //Top快捷按钮区域
            TopQuick()
            // 主体区（背景色 #f6f6f6）
            Column() {
              // 导航区域
              NavigationArea()
              // 产品区域
              Row(){
                Image($r('app.media.zfb_pro_pic1')).layoutWeight(1)
                Image($r('app.media.zfb_pro_pic2')).layoutWeight(1)
                Image($r('app.media.zfb_pro_pic3')).layoutWeight(1)
              }.padding(10)
              Column({space:10}){
                Image($r('app.media.zfb_pro_list1')).width('100%')
                Image($r('app.media.zfb_pro_list2')).width('100%')
              }.padding(10)
            }.width('100%')
            .backgroundColor('#fff')
            .borderRadius({
              topLeft: 20,
              topRight: 20
            })
          }.width('100%').padding({ top: 60, bottom: 60 })
        }
      }.width('100%').height('100%')
      //底部导航
      ButtomTab()
    }.width('100%')
    .height('100%')
    .backgroundColor('#5b73de')
  }
}
@Component
struct HeadComponent{
  build() {
    Row(){
      //左
      Column(){
        Text('北京').fontSize(18).fontColor('#fff')
        Text('晴 36°C').fontSize(12).fontColor('#fff')
        Image($r('app.media.zfb_head_down')).width(12).fillColor('#fff')
          .position({
            x: 40,
            y: 0
          })
      }
      //中
      Row(){
        Image($r('app.media.zfb_head_search')).width(20).fillColor('#666').margin({left:5,right:5})
        Text('南昌交通一卡通').layoutWeight(1)
        Text('搜索').fontColor('#5b73de').width(55).fontWeight(700).textAlign(TextAlign.Center)
          .border({ width: { left: 1 },
            color: '#ccc' })
      }.backgroundColor('#fff').borderRadius(5).height(32).layoutWeight(1).margin({left:25,right:12})
      //右
      Image($r('app.media.zfb_head_plus')).width(30).fillColor('#fff')
    }.padding({left:10,right:12}).width('100%').height(60).backgroundColor('#5b73de').zIndex(666)
  }
}
@Component
struct TopQuick {
  private quickImgs: Resource[] =
    [$r('app.media.zfb_top_scan'), $r('app.media.zfb_top_pay'),
      $r('app.media.zfb_top_travel'),
      $r('app.media.zfb_top_card')]
  private quickTitle: string[] = ['扫一扫', '收付款', '出行', '卡包']
  build() {
    Row() {
      ForEach(this.quickImgs, (item: Resource, index) => {
        Column() {
          Image(item)
            .width(36)
            .fillColor('#fff')
          Text(this.quickTitle[index])
            .fontColor('#fff')
        }
        .layoutWeight(1)
      })
    }
    .backgroundColor('#5b73de')
    .padding({ top: 5, bottom: 15 })
  }
}
@Component
struct NavigationArea {
  //导航区域图片
  private navImages: Resource[] = [$r('app.media.zfb_nav1'),
    $r('app.media.zfb_nav2'), $r('app.media.zfb_nav3'),
    $r('app.media.zfb_nav4'), $r('app.media.zfb_nav5'),
    $r('app.media.zfb_nav6'), $r('app.media.zfb_nav7'),
    $r('app.media.zfb_nav8'), $r('app.media.zfb_nav9'),
    $r('app.media.zfb_nav10'), $r('app.media.zfb_nav11'),
    $r('app.media.zfb_nav12'), $r('app.media.zfb_nav13'),
    $r('app.media.zfb_nav14'), $r('app.media.zfb_nav15_more')]
  //导航区域文本
  private navTips: string[] =
    ['滴滴出行', '生活缴费', '股票', '蚂蚁森林', '手机充值', '余额宝', '花呗',
      '飞猪旅行', '淘票票', '饿了么', '读书听书', '基金', '直播广场', '医疗健康', '更多']
  build() {
    Column({ space: 10 }) {
      List() {
        ForEach(this.navImages, (item: Resource, index) => {
          ListItem() {
            Column({ space: 5 }) {
              Image(item)
                .width(28).margin({ bottom: 8 })
              Text(this.navTips[index])
              .fontSize(12).fontColor('#666')
            }.padding(1).margin(2).width('100%')
          }
          .align(Alignment.TopEnd)
        })
      }.scrollBar(BarState.On)//滚动条关闭
      .lanes(5)  //五列
    }
    .padding(10)
  }
}
@Component
struct ButtomTab{
  private buttomImgs: Resource[] =
    [$r('app.media.zfb_tab_home'), $r('app.media.zfb_tab_money'), $r('app.media.zfb_tab_life'),
      $r('app.media.zfb_tab_chat'), $r('app.media.zfb_tab_me')]
  private buttomTitles: string[] = ['', '理财', '生活', '消息', '我的']
  build() {
    Row(){
      ForEach(this.buttomImgs,(item:Resource,index:number)=>{
        Column(){
          Image(item).width(28).margin({bottom:2})
          Text(this.buttomTitles[index]).fontSize(12)
        }.layoutWeight(1)
      },(imgsrc:Resource)=>imgsrc.id.toString())
    }.width('100%').height(60).backgroundColor('#fbfcfe')
  }
}
