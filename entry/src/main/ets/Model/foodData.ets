export interface Category {
  id: string
  title: string
  cover: string
}

export class CategoryContainer {
  title: string = ''
  categorizes: Category[] = []

  static getCategoryContainerList(): CategoryContainer[] {
    return [
      {
        title: '热门分类',
        categorizes: [
          {
            id: '40076',
            title: '家常菜',
            cover: 'https://i2.chuimg.com/a1cb7a48a56011e6947d0242ac110002_200w_200h.jpg'
          },
          {
            id: '40078',
            title: '下饭菜',
            cover: 'https://i1.chuimg.com/a243ec26a56011e6bc9d0242ac110002_200w_200h.jpg'
          },
          { id: '51761', title: '烘焙', cover: 'https://i2.chuimg.com/a1c1f180a56011e6947d0242ac110002_200w_200h.jpg' },
          { id: '2478', title: '肉类', cover: 'https://i1.chuimg.com/a1e31c7aa56011e6bc9d0242ac110002_200w_200h.jpg' },
          { id: '40071', title: '早餐', cover: 'https://i2.chuimg.com/a28f3adca56011e6bc9d0242ac110002_200w_200h.jpg' },
          { id: '5263', title: '蔬菜', cover: 'https://i1.chuimg.com/a276a832a56011e6bc9d0242ac110002_200w_200h.jpg' },
        ],
      },
      {
        title: '菜式',
        categorizes: [
          {
            id: '40077',
            title: '快手菜',
            cover: 'https://i2.chuimg.com/a1c486b6a56011e6bc9d0242ac110002_200w_200h.jpg'
          },
          { id: '51848', title: '素菜', cover: 'https://i2.chuimg.com/a2300e22a56011e6bc9d0242ac110002_200w_200h.jpg' },
          {
            id: '52381',
            title: '甜品饮品',
            cover: 'https://i2.chuimg.com/a23a3cb2a56011e6947d0242ac110002_200w_200h.jpg'
          },
          { id: '40073', title: '小吃', cover: 'https://i2.chuimg.com/a2579492a56011e6bc9d0242ac110002_200w_200h.jpg' },
          { id: '40074', title: '零食', cover: 'https://i2.chuimg.com/a1decba2a56011e6947d0242ac110002_200w_200h.jpg' },
          {
            id: '1012722',
            title: '懒人食谱',
            cover: 'https://i2.chuimg.com/61dcd2e39d5f4678b1c1364da49ea3e7_200w_200h.png'
          },
        ],
      },
      {
        title: '场景',
        categorizes: [
          {
            id: '52414',
            title: '一人食',
            cover: 'https://i1.chuimg.com/a19fcb28a56011e6bc9d0242ac110002_200w_200h.jpg'
          },
          { id: '52385', title: '宴客', cover: 'https://i2.chuimg.com/a26cd9cea56011e6bc9d0242ac110002_200w_200h.jpg' },
          {
            id: '40072',
            title: '下午茶',
            cover: 'https://i2.chuimg.com/a25b4caea56011e6947d0242ac110002_200w_200h.jpg'
          },
          { id: '20171', title: '便当', cover: 'https://i1.chuimg.com/a17fdd18a56011e6947d0242ac110002_200w_200h.jpg' },
          { id: '52370', title: '宿舍', cover: 'https://i2.chuimg.com/a22f2da4a56011e6bc9d0242ac110002_200w_200h.jpg' },
          { id: '51865', title: '宵夜', cover: 'https://i2.chuimg.com/a264867aa56011e6bc9d0242ac110002_200w_200h.jpg' },

        ],
      },
    ]

  }
}
// 所有的食物
export const FoodList: Food[] = [
  {
    id: '1',
    categoryId: '20171',
    title: '工作餐便当🍱小集锦No.6⃣️',
    cover: 'https://i2.chuimg.com/3aa00aab70a7447a898156deaae4a204_1242w_994h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.6',
    count: '35',
    author: {
      avatar: 'https://i2.chuimg.com/03dd6d2842564e00978c3e29ce523664_3024w_3024h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '马甲小厨房'
    },
  },
  {
    id: '2',
    categoryId: '1012722',
    title: '懒人焖饭-双立人智能IH电饭煲',
    cover: 'https://i2.chuimg.com/add53188db674577bb5d1aeb351786ad_1080w_1920h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.9',
    count: '217',
    author: {
      avatar: 'https://i2.chuimg.com/384a45d641934185a434d47869c3da65_1920w_2560h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '厨房日记'
    },
  },
  {
    id: '3',
    categoryId: '52381',
    title: '夜市超🔥摆摊甜品，芋泥麻薯冰汤圆❗️学会可以直接出摊',
    cover: 'https://i2.chuimg.com/06ed06a422074882bda33bedbd71262a_1280w_2254h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.5',
    count: '11',
    author: {
      avatar: 'https://i2.chuimg.com/03dd6d2842564e00978c3e29ce523664_3024w_3024h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '马甲小厨房'
    },
  },
  {
    id: '4',
    categoryId: '51761',
    title: '覆盆子/树莓开心果蛋糕卷',
    cover: 'https://i2.chuimg.com/059c7fc8776f409ca0dc3713b3a96355_1707w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '9.0',
    count: '20',
    author: {
      avatar: 'https://i2.chuimg.com/03dd6d2842564e00978c3e29ce523664_3024w_3024h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '马甲小厨房'
    },
  },
  {
    id: '5',
    categoryId: '40074',
    title: '我宣布这是最好吃的黄金椰蓉球，锁死这个配方，不迷路！',
    cover: 'https://i2.chuimg.com/fbe700ae58f24778aaa9d23ae779930c_1280w_1706h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.1',
    count: '47',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '6',
    categoryId: '40072',
    title: '🔥男孩子一定要学会的小甜品！',
    cover: 'https://i2.chuimg.com/a1219465928a45158402d0bb2de340cf_1921w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.7',
    count: '33',
    author: {
      avatar: 'https://i2.chuimg.com/9035ef07c6314c729f5a012b2923ee0c_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '幸运料理'
    },
  },
  {
    id: '7',
    categoryId: '51761',
    title: '超好吃的拔丝蛋糕🔥锁死这个配方不迷路',
    cover: 'https://i2.chuimg.com/2f39c2bc3154490b836bac248ea46c86_1280w_1706h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.3',
    count: '57',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '8',
    categoryId: '51865',
    title: '快速烫面饼',
    cover: 'https://i2.chuimg.com/1cd37ec89259480fb670e5590e6c95dc_750w_1000h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.9',
    count: '10',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '9',
    categoryId: '40074',
    title: '消耗木薯粉，一口麻薯',
    cover: 'https://i2.chuimg.com/e79631813489497fb0d1742f1994bb4f_1280w_960h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.8',
    count: '19',
    author: {
      avatar: 'https://i2.chuimg.com/03dd6d2842564e00978c3e29ce523664_3024w_3024h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '马甲小厨房'
    },
  },
  {
    id: '10',
    categoryId: '52385',
    title: '家宴',
    cover: 'https://i2.chuimg.com/75f81522892511e6a9a10242ac110002_1239w_1209h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '9.1',
    count: '126',
    author: {
      avatar: 'https://i2.chuimg.com/03dd6d2842564e00978c3e29ce523664_3024w_3024h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '马甲小厨房'
    },
  },
  {
    id: '11',
    categoryId: '40073',
    title: '早餐店3年赚钱全靠它，做法配方告诉你，太香了，学会再不用买',
    cover: 'https://i2.chuimg.com/eb1efc16edab4c089ab86e4eded74dab_1280w_720h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.1',
    count: '14',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '12',
    categoryId: '40078',
    title: '香菜炒牛肉，香辣下饭，爱吃香菜的朋友看过来，拌饭绝了',
    cover: 'https://i2.chuimg.com/97c0cf411d9f4b24b1c38648162b2cef_1920w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.3',
    count: '186',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '13',
    categoryId: '5263',
    title: '素菜冠军！营养美味的山药炒木耳',
    cover: 'https://i2.chuimg.com/0bc87bd2a7344239a302d973663939a5_735w_735h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.2',
    count: '216',
    author: {
      avatar: 'https://i2.chuimg.com/9035ef07c6314c729f5a012b2923ee0c_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '幸运料理'
    },
  },
  {
    id: '14',
    categoryId: '2478',
    title: '又香又嫩的小炒牛肉（巨好吃，手残党也能做）',
    cover: 'https://i2.chuimg.com/c41a99034121487991dd80c88b6df261_3780w_3024h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.6',
    count: '2060',
    author: {
      avatar: 'https://i2.chuimg.com/9035ef07c6314c729f5a012b2923ee0c_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '幸运料理'
    },
  },
  {
    id: '15',
    categoryId: '40078',
    title: '下饭神器又来了，试试这道春笋炒牛肉！！',
    cover: 'https://i2.chuimg.com/5995edba35334eb2aa1bafc3e8e31041_1170w_1541h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.1',
    count: '26',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '16',
    categoryId: '52381',
    title: '故宫下午茶同款-荔枝杨梅饮',
    cover: 'https://i2.chuimg.com/e6bc2ab1c65c48a19cb7124bf85fe353_1280w_960h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.7',
    count: '40',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '17',
    categoryId: '40071',
    title: '鸡蛋葱油饼',
    cover: 'https://i2.chuimg.com/698556e7e62143b887d3cfcfe1bb031d_1242w_1570h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.8',
    count: '23',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '18',
    categoryId: '40074',
    title: '宝宝小零食，鸡蛋小饼干，童年的味道～',
    cover: 'https://i2.chuimg.com/f5664b36e5574ef3979dc584a2fce142_1280w_1706h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.9',
    count: '37',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '19',
    categoryId: '2478',
    title: '超级下饭鱼香肉丝（不辣版）',
    cover: 'https://i2.chuimg.com/8459d9aa87384f08830d3bf084f49506_810w_1080h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.3',
    count: '2996',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '20',
    categoryId: '40074',
    title: '蜂蜜烤红薯片',
    cover: 'https://i2.chuimg.com/c5f625acfb7149d292ce081dd2d4b294_828w_1098h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.9',
    count: '25',
    author: {
      avatar: 'https://i2.chuimg.com/9035ef07c6314c729f5a012b2923ee0c_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '幸运料理'
    },
  },
  {
    id: '21',
    categoryId: '51848',
    title: '炒合菜',
    cover: 'https://i2.chuimg.com/a7b8ef2016b046b4ad18a52f209eaabf_2144w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.5',
    count: '130',
    author: {
      avatar: 'https://i2.chuimg.com/03dd6d2842564e00978c3e29ce523664_3024w_3024h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '马甲小厨房'
    },
  },
  {
    id: '22',
    categoryId: '40076',
    title: '鱼香肉丝',
    cover: 'https://i2.chuimg.com/503615c4419940f7b212a4c03f214caa_1280w_733h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.8',
    count: '74',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '23',
    categoryId: '51848',
    title: '虎皮青椒',
    cover: 'https://i2.chuimg.com/8b151f8895e24b6293e2f139a387f634_828w_1098h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.2',
    count: '151',
    author: {
      avatar: 'https://i2.chuimg.com/03dd6d2842564e00978c3e29ce523664_3024w_3024h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '马甲小厨房'
    },
  },
  {
    id: '24',
    categoryId: '40076',
    title: '红烧茄子',
    cover: 'https://i2.chuimg.com/06f8df7e7a9b4eae8b81dfe816ac7b42_1080w_1920h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.0',
    count: '43',
    author: {
      avatar: 'https://i2.chuimg.com/384a45d641934185a434d47869c3da65_1920w_2560h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '厨房日记'
    },
  },
  {
    id: '25',
    categoryId: '52370',
    title: '宿舍一人食之虾仁炖豆腐',
    cover: 'https://i2.chuimg.com/e21b1f4a5adc41d79ed0499f1963b572_1080w_864h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.8',
    count: '20',
    author: {
      avatar: 'https://i2.chuimg.com/384a45d641934185a434d47869c3da65_1920w_2560h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '厨房日记'
    },
  },
  {
    id: '26',
    categoryId: '40077',
    title: '香菜炒牛肉，香辣下饭，爱吃香菜的朋友看过来，拌饭绝了',
    cover: 'https://i2.chuimg.com/97c0cf411d9f4b24b1c38648162b2cef_1920w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.3',
    count: '186',
    author: {
      avatar: 'https://i2.chuimg.com/03dd6d2842564e00978c3e29ce523664_3024w_3024h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '马甲小厨房'
    },
  },
  {
    id: '27',
    categoryId: '40072',
    title: '超级方便的（芒果牛奶西米露）',
    cover: 'https://i2.chuimg.com/9632d9f1f6f545dbac724957fb06d223_1280w_1279h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.2',
    count: '70',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '28',
    categoryId: '51761',
    title: '一次成功✅新手必做超细腻巴斯克蛋糕',
    cover: 'https://i2.chuimg.com/d89984d3227a45c09bd6d76aa80ad1ea_1225w_1633h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.9',
    count: '52',
    author: {
      avatar: 'https://i2.chuimg.com/384a45d641934185a434d47869c3da65_1920w_2560h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '厨房日记'
    },
  },
  {
    id: '29',
    categoryId: '20171',
    title: '高颜值的紫菜包饭',
    cover: 'https://i2.chuimg.com/4e1e654a82f04044ab9c1aed4cd79341_1080w_864h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.5',
    count: '1261',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '30',
    categoryId: '40073',
    title: '放三天都不硬的青团配方',
    cover: 'https://i2.chuimg.com/f5c0b2ac09e1431d8dc35bb6d5e7844a_1280w_960h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.7',
    count: '56',
    author: {
      avatar: 'https://i2.chuimg.com/9035ef07c6314c729f5a012b2923ee0c_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '幸运料理'
    },
  },
  {
    id: '31',
    categoryId: '5263',
    title: '白灼油菜—年夜饭最受欢迎的素菜',
    cover: 'https://i2.chuimg.com/9d163416048e43cb9e76fc7937477ac2_2664w_2000h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.2',
    count: '134',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '32',
    categoryId: '52385',
    title: '节日聚餐时刻',
    cover: 'https://i2.chuimg.com/7c02882e8a41461ab5f41d50d1c65f51_1224w_1267h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.7',
    count: '44',
    author: {
      avatar: 'https://i2.chuimg.com/9035ef07c6314c729f5a012b2923ee0c_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '幸运料理'
    },
  },
  {
    id: '33',
    categoryId: '2478',
    title: '下饭神器回锅肉，不爱吃肥肉的我都超喜欢！',
    cover: 'https://i2.chuimg.com/8b92b69edd6b4f9381350c562ba37551_3072w_4095h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.2',
    count: '1455',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '34',
    categoryId: '51865',
    title: '宵夜煎蛋焖面',
    cover: 'https://i2.chuimg.com/f14bcfee35324401aaabbe4cc7e70881_4096w_3072h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.2',
    count: '13',
    author: {
      avatar: 'https://i2.chuimg.com/9035ef07c6314c729f5a012b2923ee0c_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '幸运料理'
    },
  },
  {
    id: '35',
    categoryId: '51865',
    title: '十分钟快手剪刀面，老公最爱的宵夜',
    cover: 'https://i2.chuimg.com/a24b26919eac4a16993067a10d78e806_4092w_3072h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.9',
    count: '63',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '36',
    categoryId: '40072',
    title: '芝士烤牛奶',
    cover: 'https://i2.chuimg.com/1b93ec8322024abe86c444041f01dedf_2880w_3840h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.5',
    count: '422',
    author: {
      avatar: 'https://i2.chuimg.com/03dd6d2842564e00978c3e29ce523664_3024w_3024h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '马甲小厨房'
    },
  },
  {
    id: '37',
    categoryId: '52385',
    title: '朋友聚餐菜谱',
    cover: 'https://i2.chuimg.com/e30dce1f911641e597332a92182eb1e7_960w_1280h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.8',
    count: '40',
    author: {
      avatar: 'https://i2.chuimg.com/384a45d641934185a434d47869c3da65_1920w_2560h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '厨房日记'
    },
  },
  {
    id: '38',
    categoryId: '40077',
    title: '鲜香美味‖鸡蛋抱豆腐，宝宝天天哭着要吃！',
    cover: 'https://i2.chuimg.com/99e1f577c7a247f39b7efa317353ddd2_1080w_1440h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '6.5',
    count: '99',
    author: {
      avatar: 'https://i2.chuimg.com/03dd6d2842564e00978c3e29ce523664_3024w_3024h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '马甲小厨房'
    },
  },
  {
    id: '39',
    categoryId: '40073',
    title: '家乡名小吃黄桥烧饼，简单开酥不用手套膜，层次分明，酥软可口‼️',
    cover: 'https://i2.chuimg.com/b5f7d15926994430b5e542ffb8ecdb9a_3414w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.9',
    count: '12',
    author: {
      avatar: 'https://i2.chuimg.com/9035ef07c6314c729f5a012b2923ee0c_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '幸运料理'
    },
  },
  {
    id: '40',
    categoryId: '40076',
    title: '家常糖醋里脊',
    cover: 'https://i2.chuimg.com/584617789d7d4ed3928ed00ca2f50008_3343w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.2',
    count: '146',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '41',
    categoryId: '1012722',
    title: '家庭版懒人烤布丁',
    cover: 'https://i2.chuimg.com/2868ebf038a44cc591eebb4cf7e606fe_1280w_1024h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.9',
    count: '42',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '42',
    categoryId: '40078',
    title: '鱼香肉丝',
    cover: 'https://i2.chuimg.com/503615c4419940f7b212a4c03f214caa_1280w_733h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.8',
    count: '74',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '43',
    categoryId: '40077',
    title: '破防了！感觉之前的鸡腿白吃了！又香又嫩',
    cover: 'https://i2.chuimg.com/7ea65492aee446faa7a9290d2ad01ae0_1920w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.5',
    count: '78',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '44',
    categoryId: '52381',
    title: '港式甜品——杨枝甘露(芒果西米露)附芒果花切法',
    cover: 'https://i2.chuimg.com/85f3f078a14549b491f3b36558d4aece_1242w_994h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.3',
    count: '3426',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '45',
    categoryId: '40077',
    title: '巨巨巨…好吃，求你们去做！！',
    cover: 'https://i2.chuimg.com/5fc00622337642c78d6372f92514f2ee_1179w_1546h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.7',
    count: '24',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '46',
    categoryId: '40071',
    title: '兄妹早餐：口袋芝麻饼',
    cover: 'https://i2.chuimg.com/bc287dceb7534e4d991fcc63c1c56d51_781w_1036h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '9.3',
    count: '16',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '47',
    categoryId: '52414',
    title: '一人份小米粥（单身养胃必备）',
    cover: 'https://i2.chuimg.com/610ded1ccebc4d87ac92241b3da8b5a2_1124w_1124h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.4',
    count: '15',
    author: {
      avatar: 'https://i2.chuimg.com/384a45d641934185a434d47869c3da65_1920w_2560h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '厨房日记'
    },
  },
  {
    id: '48',
    categoryId: '40073',
    title: '朋友建议我开个小馆子😅😅香辣鱼块太香了🔥',
    cover: 'https://i2.chuimg.com/6fe8fc85c6f045679b8badefe7696e61_1179w_1538h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.2',
    count: '200',
    author: {
      avatar: 'https://i2.chuimg.com/9035ef07c6314c729f5a012b2923ee0c_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '幸运料理'
    },
  },
  {
    id: '49',
    categoryId: '5263',
    title: '素炒鲜口蘑（白蘑菇），快手家常菜',
    cover: 'https://i2.chuimg.com/076a1687f4944c38b8100329239a64da_1501w_1251h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.0',
    count: '299',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '50',
    categoryId: '52370',
    title: '阳春面',
    cover: 'https://i2.chuimg.com/1c03f93ef9b145a181d45011537105d7_2492w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.1',
    count: '15',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '51',
    categoryId: '52381',
    title: '自制无敌好喝夏日解腻水果茶🍊完爆饮品店，新手百分百成功，试试就知道',
    cover: 'https://i2.chuimg.com/33d2144c12c946bc82e02cb89309252a_3003w_2472h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '9.0',
    count: '157',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '52',
    categoryId: '52370',
    title: '番茄肥牛面',
    cover: 'https://i2.chuimg.com/e7399efdf6de4177a6b6037b82f45173_845w_845h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.0',
    count: '301',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '53',
    categoryId: '2478',
    title: '超下饭的辣椒炒肉',
    cover: 'https://i2.chuimg.com/0c917986d8524e93b201f14aaeacadd0_1921w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.9',
    count: '139',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '54',
    categoryId: '52414',
    title: '零失败！超快手！超美味！无负担！的单身汪减脂晚餐',
    cover: 'https://i2.chuimg.com/e911abe2b0a945088fc53f3c5f8541c8_744w_992h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.1',
    count: '22',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '55',
    categoryId: '5263',
    title: '手撕包菜（米饭杀手系列二）',
    cover: 'https://i2.chuimg.com/80b2fbf6d6c547dca21b61fe1c875f48_1080w_810h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.9',
    count: '5203',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '56',
    categoryId: '52414',
    title: '🔥一人食|不加一滴水的香葱鸡蛋饼做法',
    cover: 'https://i2.chuimg.com/8608d7125f3e496bbad9434e2fac6e85_1920w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '6.9',
    count: '48',
    author: {
      avatar: 'https://i2.chuimg.com/9035ef07c6314c729f5a012b2923ee0c_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '幸运料理'
    },
  },
  {
    id: '57',
    categoryId: '40071',
    title: '60天早餐不重样😄',
    cover: 'https://i2.chuimg.com/6d1347058fff46319fb008936e3d89b2_1440w_1080h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.3',
    count: '13',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '58',
    categoryId: '52385',
    title: '宴客菜10个菜',
    cover: 'https://i2.chuimg.com/1c7186073d014992b7cf7d1ef97a5e47_912w_684h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.4',
    count: '16',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '59',
    categoryId: '51865',
    title: '自制销魂酸辣粉丝❗️酸酸辣辣超级过瘾',
    cover: 'https://i2.chuimg.com/fd2057d3d2c44fae8227e51e343149d2_960w_1280h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.9',
    count: '140',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '60',
    categoryId: '51761',
    title: '宝宝小零食，鸡蛋小饼干，童年的味道～',
    cover: 'https://i2.chuimg.com/f5664b36e5574ef3979dc584a2fce142_1280w_1706h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.9',
    count: '37',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '61',
    categoryId: '1012722',
    title: '懒人早餐萝卜丝煎饼',
    cover: 'https://i2.chuimg.com/45eef6c49d8c4b72adc451b79b35e2b3_1920w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.7',
    count: '67',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '62',
    categoryId: '40078',
    title: '鸡蛋酱（下饭神器1）',
    cover: 'https://i2.chuimg.com/633083e922804bb1944f085948dfda47_3414w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.8',
    count: '23',
    author: {
      avatar: 'https://i2.chuimg.com/03dd6d2842564e00978c3e29ce523664_3024w_3024h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '马甲小厨房'
    },
  },
  {
    id: '63',
    categoryId: '52414',
    title: '一周减脂餐•一人食•早中晚（含每餐大概卡路里）',
    cover: 'https://i2.chuimg.com/d1e3a2c4b1e2439f8449e06ea7385bb2_2562w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.9',
    count: '25',
    author: {
      avatar: 'https://i2.chuimg.com/e688c60932b94096856835bb2ea3c404_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '阿欣的小食光'
    },
  },
  {
    id: '64',
    categoryId: '51848',
    title: '比肉还好吃的蚝油生菜',
    cover: 'https://i2.chuimg.com/3622185d839d4ed8b6bd930d289b60fd_1280w_1706h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.6',
    count: '35',
    author: {
      avatar: 'https://i2.chuimg.com/9035ef07c6314c729f5a012b2923ee0c_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '幸运料理'
    },
  },
  {
    id: '65',
    categoryId: '20171',
    title: '便当记🍱（记录）',
    cover: 'https://i2.chuimg.com/f6ea2ef35bd34c038a2bcead768a3311_4000w_4000h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.3',
    count: '40',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '66',
    categoryId: '20171',
    title: '上班族减脂午餐便当',
    cover: 'https://i2.chuimg.com/d39fe0869da642ed94d178d945eafd72_2088w_1566h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.2',
    count: '138',
    author: {
      avatar: 'https://i2.chuimg.com/384a45d641934185a434d47869c3da65_1920w_2560h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '厨房日记'
    },
  },
  {
    id: '67',
    categoryId: '51848',
    title: '酸辣土豆丝‼️超级下饭',
    cover: 'https://i2.chuimg.com/cd3f682fa4fb418686ee9f60cfee0153_1280w_1280h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '7.8',
    count: '19',
    author: {
      avatar: 'https://i2.chuimg.com/1d3120675d34493f93e21e98c631933f_1280w_1156h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '爱做菜的普通人'
    },
  },
  {
    id: '68',
    categoryId: '40076',
    title: '家常菜的天花板❗️',
    cover: 'https://i2.chuimg.com/3d7c7c0bcce940109aa3b02cedf7eae7_1920w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.4',
    count: '23',
    author: {
      avatar: 'https://i2.chuimg.com/384a45d641934185a434d47869c3da65_1920w_2560h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '厨房日记'
    },
  },
  {
    id: '69',
    categoryId: '40072',
    title: '焦糖红茶布丁',
    cover: 'https://i2.chuimg.com/90c686c93c774fd88f7fcc296d14566b_1920w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.0',
    count: '18',
    author: {
      avatar: 'https://i2.chuimg.com/9035ef07c6314c729f5a012b2923ee0c_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '幸运料理'
    },
  },
  {
    id: '70',
    categoryId: '52370',
    title: '好吃到舔碗底的荷包蛋焖方便面',
    cover: 'https://i2.chuimg.com/92265148741c454e929c6011447574d4_1921w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '6.6',
    count: '21',
    author: {
      avatar: 'https://i2.chuimg.com/cccd09e3c2db4707b8ed522066f1b801_1080w_1080h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '仔妈厨房'
    },
  },
  {
    id: '71',
    categoryId: '40071',
    title: '早餐店3年赚钱全靠它，做法配方告诉你，太香了，学会再不用买',
    cover: 'https://i2.chuimg.com/eb1efc16edab4c089ab86e4eded74dab_1280w_720h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.1',
    count: '14',
    author: {
      avatar: 'https://i2.chuimg.com/03dd6d2842564e00978c3e29ce523664_3024w_3024h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '马甲小厨房'
    },
  },
  {
    id: '72',
    categoryId: '1012722',
    title: '懒人锅贴 不用和面 做法真的超简单！！',
    cover: 'https://i2.chuimg.com/6d2ba04282474be8a42d0d2dd0fa80ec_1920w_2560h.jpg?imageView2/1/w/280/h/190/interlace/1/q/75',
    score: '8.2',
    count: '178',
    author: {
      avatar: 'https://i2.chuimg.com/384a45d641934185a434d47869c3da65_1920w_2560h.jpg?imageView2/1/w/160/h/160/interlace/1/q/75',
      nickname: '厨房日记'
    },
  },
]

export interface Author {
  avatar: string
  nickname: string
}

export interface Food {
  id: string
  score: string
  categoryId: string
  cover: string
  title: string
  count: string
  author: Author
}