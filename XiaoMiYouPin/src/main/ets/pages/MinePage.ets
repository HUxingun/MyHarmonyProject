import { router } from '@kit.ArkUI'

// 菜单项接口
interface MenuItem {
  icon: ResourceStr
  title: string
  subtitle: string
}

// 订单入口接口
interface OrderEntry {
  icon: ResourceStr
  label: string
  badge: number
}

@Entry
@Component
export default struct MinePage {
  @State userName: string = '周杰伦'
  @State isVip: boolean = true

  // 订单入口 - 使用 SVG 图标
  private orderEntries: OrderEntry[] = [
    { icon: $r('app.media.fukuan'), label: '待付款', badge: 2 },
    { icon: $r('app.media.fahuo'), label: '待发货', badge: 0 },
    { icon: $r('app.media.shouhuo'), label: '待收货', badge: 3 },
    { icon: $r('app.media.pingjia'), label: '待评价', badge: 0 },
    { icon: $r('app.media.shouhou'), label: '售后', badge: 0 }
  ]

  // 功能菜单 - 使用 SVG 图标
  private menuList: MenuItem[] = [
    { icon: $r('app.media.dingdan'), title: '我的订单', subtitle: '查看全部订单' },
    { icon: $r('app.media.youhuiquan'), title: '优惠券', subtitle: '8张可用' },
    { icon: $r('app.media.hongbao'), title: '我的红包', subtitle: '3个红包' },
    { icon: $r('app.media.shoucang'), title: '我的收藏', subtitle: '12件商品' },
    { icon: $r('app.media.liulanjilv'), title: '浏览记录', subtitle: '' },
    { icon: $r('app.media.dizhi'), title: '收货地址', subtitle: '3个地址' },
    { icon: $r('app.media.kefuzhongxin'), title: '客服中心', subtitle: '7x24小时' },
    { icon: $r('app.media.ic_public_arrow_right'), title: '设置', subtitle: '' }
  ]

  build() {
    Column() {
      // ========== 顶部用户信息区 (渐变背景) ==========
      Column() {
        // 设置图标
        Row() {
          Blank()
          Image($r('app.media.ic_xiaomi_ring'))
            .width(24)
            .height(24)
            .margin({ right: 16, top: 8 })
        }
        .width('100%')

        // 头像(周杰伦) + 用户名
        Row() {
          // 周杰伦头像
          Image($r('app.media.zhoujielun'))
            .width(70)
            .height(70)
            .borderRadius(35)
            .border({ width: 2, color: '#b6854e' })
            .objectFit(ImageFit.Cover)

          Column() {
            Row() {
              Text(this.userName)
                .fontSize(20)
                .fontWeight(FontWeight.Bold)
                .fontColor('#4a3728')
              if (this.isVip) {
                Text('VIP')
                  .fontSize(10)
                  .fontColor(Color.White)
                  .backgroundColor('#b6854e')
                  .padding({ left: 6, right: 6, top: 1, bottom: 1 })
                  .borderRadius(4)
                  .margin({ left: 8 })
              }
            }
            Text('普通会员 · 成长值 1280')
              .fontSize(12)
              .fontColor('#8b7355')
              .margin({ top: 4 })
          }
          .alignItems(HorizontalAlign.Start)
          .margin({ left: 16 })

          Blank()

          Text('编辑资料 >')
            .fontSize(12)
            .fontColor('#8b7355')
        }
        .width('100%')
        .padding({ left: 20, right: 16, bottom: 20 })
      }
      .width('100%')
      .linearGradient({
        angle: 180,
        colors: [['#fdf8f0', 0], ['#f5e6d3', 0.4], ['#fcf5eb', 0.7], ['#faf5eb', 1]]
      })
      .padding({ top: 12 })

      // ========== 订单入口 ==========
      Column() {
        Row() {
          Text('我的订单')
            .fontSize(15)
            .fontWeight(FontWeight.Bold)
            .fontColor('#333')
          Blank()
          Text('查看全部 >')
            .fontSize(12)
            .fontColor('#999')
        }
        .width('100%')
        .padding({ left: 16, right: 16, bottom: 12 })

        Row() {
          ForEach(this.orderEntries, (entry: OrderEntry) => {
            Column({ space: 6 }) {
              Stack() {
                Image(entry.icon)
                  .width(28)
                  .height(28)
                  .fillColor('#b6854e')
                if (entry.badge > 0) {
                  Text(entry.badge.toString())
                    .fontSize(10)
                    .fontColor(Color.White)
                    .backgroundColor('#e74c3c')
                    .borderRadius(8)
                    .padding({ left: 5, right: 5, top: 1, bottom: 1 })
                    .position({ x: 20, y: -6 })
                }
              }
              Text(entry.label)
                .fontSize(12)
                .fontColor('#666')
            }
            .layoutWeight(1)
          })
        }
        .width('100%')
        .padding({ left: 8, right: 8 })
      }
      .width('100%')
      .padding({ top: 16, bottom: 16 })
      .backgroundColor(Color.White)
      .margin({ top: 10 })

      // ========== 功能菜单列表 ==========
      Column() {
        ForEach(this.menuList, (menu: MenuItem) => {
          Row() {
            Image(menu.icon)
              .width(22)
              .height(22)
              .fillColor('#b6854e')
            Text(menu.title)
              .fontSize(15)
              .fontColor('#333')
              .margin({ left: 12 })
            Blank()
            if (menu.subtitle) {
              Text(menu.subtitle)
                .fontSize(12)
                .fontColor('#999')
                .margin({ right: 4 })
            }
            Image($r('app.media.ic_public_arrow_right'))
              .width(14)
              .height(14)
              .fillColor('#ccc')
          }
          .width('100%')
          .padding({ left: 16, right: 16, top: 14, bottom: 14 })
          .backgroundColor(Color.White)
          .border({
            width: { bottom: 0.5 },
            color: '#f5f0e8'
          })
        })
      }
      .width('100%')
      .margin({ top: 10 })

      // ========== 退出登录 ==========
      Button('退出登录')
        .width('90%')
        .height(44)
        .backgroundColor(Color.White)
        .fontColor('#e74c3c')
        .fontSize(14)
        .margin({ top: 30, bottom: 30 })
        .borderRadius(22)
        .border({ width: 1, color: '#e74c3c' })
        .onClick(() => {
          router.pushUrl({ url: 'pages/LoginPage' })
        })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#faf5eb')
  }
}
