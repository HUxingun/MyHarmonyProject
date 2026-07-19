export interface Goods {
  id: string
  name: string
  desc: string
  price: number
  oriPrice: number
  img: string
  tag?: string
}

@Observed
export class CartGoods {
  id: string
  goods: Goods
  count: number

  constructor(g: Goods, count: number = 1) {
    this.id = g.id
    this.goods = g
    this.count = count
  }
}

export class CartStore {
  static getList(): CartGoods[] {
    const raw: CartGoods[] | undefined = AppStorage.get<CartGoods[]>('cartGoodsList')
    return raw ?? []
  }
  static setList(list: CartGoods[]): void {
    AppStorage.setOrCreate('cartGoodsList', list)
  }
  static addGoods(goods: Goods, count: number = 1): void {
    const list = CartStore.getList()
    const existing = list.find((item: CartGoods) => item.id === goods.id)
    if (existing) {
      existing.count += count
    } else {
      list.push(new CartGoods(goods, count))
    }
    CartStore.setList(list)
  }
}

export function initCartData(): void {
  AppStorage.setOrCreate('cartGoodsList', [])
}

export const mockGoods: Goods[] = [
  {
    id: '1', name: '飞天茅台 53度 500ml', desc: '酱香突出·幽雅细腻·酒体醇厚', price: 1499, oriPrice: 1799,
    img: 'https://tse1-mm.cn.bing.net/th/id/OIP-C.JffYS8nMGTLX4gjZhbHsGgHaHa?w=199&h=199&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '稀缺'
  },
  {
    id: '2', name: '小米手环 10 Pro', desc: '1.74"AMOLED全面屏·14天续航', price: 399, oriPrice: 499,
    img: 'https://tse4-mm.cn.bing.net/th/id/OIP-C.mBiLNgMx1wmxRgyuMrNRygHaJ3?w=132&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '热卖'
  },
  {
    id: '3', name: '米家高速吹风机 H501', desc: '11万转高速马达·亿级负离子', price: 199, oriPrice: 299,
    img: 'https://tse4-mm.cn.bing.net/th/id/OIP-C.kuuBjZr6q4028q7GOUI6QgHaGE?w=243&h=199&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '新品'
  },
  {
    id: '4', name: '米家智能吸油烟机 3C', desc: '侧吸大吸力·烟灶联动', price: 999, oriPrice: 1499,
    img: 'https://tse3-mm.cn.bing.net/th/id/OIP-C.u221eMjBMpMp7urDpE2rYQHaGC?w=268&h=218&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '爆款'
  },
  {
    id: '5', name: '米家恒温电水壶 钛钢版', desc: '316L钛钢内胆·精准控温', price: 159, oriPrice: 199,
    img: 'https://tse2-mm.cn.bing.net/th/id/OIP-C.Q6qC0uT_-AcoXcO0OE0R3AHaHm?w=174&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3'
  },
  {
    id: '6', name: '小米自带线充电宝 20000', desc: '22.5W快充·自带线便携', price: 109, oriPrice: 139,
    img: 'https://tse3-mm.cn.bing.net/th/id/OIP-C.Vv2_Lz3fjtiFXiFbEbf5kgAAAA?w=141&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '秒杀'
  },
  {
    id: '7', name: '米家多功能养生壶 N1', desc: '12大功能菜单·24h预约', price: 99, oriPrice: 129,
    img: 'https://tse3-mm.cn.bing.net/th/id/OIP-C.u2t8N2epTp3CZLKiZiEvmwHaJA?w=156&h=190&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3'
  },
  {
    id: '8', name: '米家直流变频塔扇 2', desc: '广角送风·12档风速·静音', price: 299, oriPrice: 399,
    img: 'https://tse1-mm.cn.bing.net/th/id/OIP-C.JvNReWVdlrqYHSuae6dSIwHaHd?w=192&h=194&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '优选'
  },
  {
    id: '9', name: '米家声波电动牙刷 T302', desc: '磁悬浮马达·IPX7防水', price: 139, oriPrice: 179,
    img: 'https://tse3-mm.cn.bing.net/th/id/OIP-C.U4mGZn94I_qHSgSxR--pKwHaHa?w=203&h=203&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3'
  },
  {
    id: '10', name: '小米小爱音箱 Play 增强版', desc: 'LED时钟显示·红外遥控', price: 129, oriPrice: 149,
    img: 'https://tse1-mm.cn.bing.net/th/id/OIP-C.6p8q0z_XJgbR42WzXOf84QHaHA?w=178&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '智能'
  },
  {
    id: '11', name: '潮牌连帽卫衣 春秋款', desc: '纯棉面料·宽松版型·情侣款', price: 159, oriPrice: 259,
    img: 'https://tse1-mm.cn.bing.net/th/id/OIP-C.s5MdFc9fADuBAiG2x0AQcwHaHa?w=212&h=212&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '潮搭'
  },
  {
    id: '12', name: '天丝四件套 轻奢床品', desc: '100支天丝·丝滑亲肤·一整套', price: 399, oriPrice: 699,
    img: 'https://tse4-mm.cn.bing.net/th/id/OIP-C.O18BH-U7VnCHSXdf7JRGggHaHa?w=203&h=203&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '床品'
  },
  {
    id: '13', name: '赣南脐橙 精选鲜果 5斤装', desc: '产地直发·皮薄汁多·鲜甜可口', price: 39.9, oriPrice: 59.9,
    img: 'https://tse3-mm.cn.bing.net/th/id/OIP-C.YB63Z4-xdZ084AcYxk_wdQHaHa?w=208&h=208&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '鲜果'
  },
  {
    id: '14', name: '意式极简真皮沙发 三人位', desc: '头层牛皮·高密度海绵·榉木框架', price: 3999, oriPrice: 5999,
    img: 'https://tse2-mm.cn.bing.net/th/id/OIP-C.AYt5uua1PQWNlclt3msutwHaHq?w=197&h=204&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '大件'
  },
  {
    id: '15', name: '4D电动按摩椅 全身气囊', desc: '零重力·足底刮痧·蓝牙音响', price: 4999, oriPrice: 8999,
    img: 'https://tse1-mm.cn.bing.net/th/id/OIP-C.gjKUdL8Ivj9pkH-TbG1WqQAAAA?w=167&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '奢享'
  },
  {
    id: '16', name: 'Skill 焕颜精华液 30ml', desc: '烟酰胺·玻尿酸·淡化细纹', price: 269, oriPrice: 399,
    img: 'https://tse2-mm.cn.bing.net/th/id/OIP-C.6M0wBz1kxu45HXw8JU8bnQAAAA?w=162&h=176&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '护肤'
  },
  {
    id: '17', name: '须眉 T6 智能彩屏剃须刀', desc: 'Type-C快充·全身水洗·旅行锁', price: 169, oriPrice: 249,
    img: 'https://tse1-mm.cn.bing.net/th/id/OIP-C.tuSYeLIbpQkHVjGH7LCvJAHaGo?w=244&h=219&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '个护'
  },
  {
    id: '18', name: '深层放松筋膜枪 Pro', desc: '无刷电机·6档变速·4按摩头', price: 299, oriPrice: 499,
    img: 'https://tse1-mm.cn.bing.net/th/id/OIP-C.ZvoLHbmWa16xgMpyF9mIkwHaE7?w=234&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '运动'
  },
  {
    id: '19', name: 'Redmi 27" 4K显示器', desc: 'IPS广色域·Type-C 65W·旋转升降', price: 1299, oriPrice: 1699,
    img: 'https://tse1-mm.cn.bing.net/th/id/OIP-C.fCWqQUlT6uALFHECn38zEQHaHa?w=208&h=208&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', tag: '办公'
  },
  {
    id: '20', name: '米家自动洗手机 1S', desc: '感应出泡·99.9%抑菌', price: 79, oriPrice: 99,
    img: 'https://tse3-mm.cn.bing.net/th/id/OIP-C.jDaWIKKnduBDuoZI2DziuAHaHa?w=194&h=194&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3'
  },
]