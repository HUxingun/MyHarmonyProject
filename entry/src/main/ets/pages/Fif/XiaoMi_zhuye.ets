interface XMNavItem {
  title: string
  icon: ResourceStr
}

@Entry
@Component
struct XiaoMi_zhuye {
  navList: XMNavItem[] = [
    { title: '上新精选', icon: $r('app.media.ic_xiaomi_nav_01') },
    { title: '智能家电', icon: $r('app.media.ic_xiaomi_nav_02') },
    { title: '小米众筹', icon: $r('app.media.ic_xiaomi_nav_03') },
    { title: '有品会员', icon: $r('app.media.ic_xiaomi_nav_04') },
    { title: '有品秒杀', icon: $r('app.media.ic_xiaomi_nav_05') },
    { title: '原产地', icon: $r('app.media.ic_xiaomi_nav_06') },
    { title: '生活优选', icon: $r('app.media.ic_xiaomi_nav_07') },
    { title: '手机', icon: $r('app.media.ic_xiaomi_nav_08') },
    { title: '小米自营', icon: $r('app.media.ic_xiaomi_nav_09') },
    { title: '茅台酒饮', icon: $r('app.media.ic_xiaomi_nav_10') },
    { title: '鞋服饰品', icon: $r('app.media.ic_xiaomi_nav_11') },
    { title: '家纺餐厨', icon: $r('app.media.ic_xiaomi_nav_12') },
    { title: '食品生鲜', icon: $r('app.media.ic_xiaomi_nav_13') },
    { title: '好惠买', icon: $r('app.media.ic_xiaomi_nav_14') },
    { title: '家具家装', icon: $r('app.media.ic_xiaomi_nav_15') },
    { title: '健康养生', icon: $r('app.media.ic_xiaomi_nav_16') },
    { title: '有品海购', icon: $r('app.media.ic_xiaomi_nav_17') },
    { title: '个护清洁', icon: $r('app.media.ic_xiaomi_nav_18') },
    { title: '户外运动', icon: $r('app.media.ic_xiaomi_nav_19') },
    { title: '3C数码', icon: $r('app.media.ic_xiaomi_nav_20') }
  ]

  build() {
    Column() {
      // 顶部搜索区域
      this.HeaderBuilder()

      // 轮播图区域
      Column() {
        Swiper() {
          Image($r('app.media.ic_swiper_xmyp01'))
          Image($r('app.media.ic_swiper_xmyp02'))
          Image($r('app.media.ic_swiper_xmyp03'))
          Image($r('app.media.ic_swiper_xmyp04'))
        }
        .height(140)
        .borderRadius(10)
        .width('100%')
        .indicator(
          Indicator.dot()
            .selectedColor(Color.White)
            .selectedItemWidth(25)
            .selectedItemHeight(4)
        )
      }
      .padding(12)

      // 导航区域
      this.navBuilder()

      // 底部楼层区域
      Image($r('app.media.ic_xiaomi_floor'))
        .width('100%')
        .margin({ top: 10 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#e1e1e1')
  }

  @Builder
  HeaderBuilder() {
    // 顶部搜索区域
    Row({ space: 10 }) {
      Image($r('app.media.ic_xiaomi_logo'))
        .width(50);
      Row({ space: 10 }) {
        Image($r('app.media.ic_xiaomi_search'))
          .width(20);
        Text('电视')
          .fontColor('#ccc');
      }
      .width(220)
      .height(36)
      .backgroundColor(Color.White)
      .borderRadius(18)
      .padding({ left: 10 })
      .border({ width: 1, color: '#aa8854' });

      // 通知
      Badge({ value: '99+', position: { x: 15 }, style: {} }) {
        Image($r('app.media.ic_xiaomi_ring'))
          .width(35);
      };
    }
    .padding(10)
    .width('100%')
  }

  @Builder
  navBuilder() {
    Column() {
      Grid() {
        ForEach(this.navList, (item: XMNavItem) => {
          GridItem() {
            Column() {
              Image(item.icon)
                .width(80);
              Text(item.title)
                .fontSize(12);
            }
            .height('100%');
          }
          .width('20%');
        });
      }
      .rowsTemplate('1fr 1fr') //横向滚动
      .height(160)
      .width('100%')
      .backgroundColor(Color.White)
      .borderRadius(10)
      .padding({ bottom: 10 })
      .scrollBar(BarState.Off)
    }
    .padding({ left: 12, right: 12 })
  }
}