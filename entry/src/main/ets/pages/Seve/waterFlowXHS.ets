interface WaterFlowItem {
  nickName: string
  avatar: string
  cover: string
  likedCount: string
  displayTitle: string
}

@Entry
@Component
struct waterFlowDemo {
  list: WaterFlowItem[] = [
    {
      nickName: 'RMIUC',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/63896acf9cd275d6e92d8bca.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/63896acf9cd275d6e92d8bca.jpg',
      likedCount: '1w+',
      displayTitle: '💪🏻其实那些“秀身材”的人，自己都很痛苦😩'
    },
    {
      nickName: 'Konka就是康佳',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30u00hslmkoe0407bna3hji6r7amf53o',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30u00hslmkoe0407bna3hji6r7amf53o',
      likedCount: '1k+',
      displayTitle: '在国外穿新中式旗袍是什么感觉？'
    },
    {
      nickName: 'ice-ccc',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/654ca7075bc17f00019cf218.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/654ca7075bc17f00019cf218.jpg',
      likedCount: '100+',
      displayTitle: '#江疏影 #广州 '
    },
    {
      nickName: 'salvie-饿鱼儿',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1000g2jo2n6qrsj4jo0605p3ro593orafsk0eis0',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1000g2jo2n6qrsj4jo0605p3ro593orafsk0eis0',
      likedCount: '100+',
      displayTitle: '真实的面包博主视频水平'
    },
    {
      nickName: '小居室',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/6540ac8a11557fc364f5aa83.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/6540ac8a11557fc364f5aa83.jpg',
      likedCount: '1w+',
      displayTitle: '啊啊啊！买到了人生书桌了😭😭'
    },
    {
      nickName: '小哭包',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/65debeab4eabfff265c20188.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/65debeab4eabfff265c20188.jpg',
      likedCount: '1w+',
      displayTitle: '我的故事很简单你在身边在你身边'
    },
    {
      nickName: 'Dee',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1000g2jo2qns269gji0005p53udd486fkkjl6q3g',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1000g2jo2qns269gji0005p53udd486fkkjl6q3g',
      likedCount: '1k+',
      displayTitle: '浓颜系 '
    },
    {
      nickName: '爆炸百科',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30sk6lp8tk05g5oj3cllk1ph2js2vtpo',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30sk6lp8tk05g5oj3cllk1ph2js2vtpo',
      likedCount: '100+',
      displayTitle: '荷兰为何被称性自由之都？荷兰究竟多开放？'
    },
    {
      nickName: '波妞',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5c973892ab65af0001194315.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/5c973892ab65af0001194315.jpg',
      likedCount: '100+',
      displayTitle: '姐妹们，面试一定要小心，有些人是真小人啊。一见面不停打听我的考试时间，地点，考试'
    },
    {
      nickName: '花生优品百货',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/652d08b327f43d57947f5438.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/652d08b327f43d57947f5438.jpg',
      likedCount: '1w+',
      displayTitle: '很难评价！谁发明的神奇勺子，都没见过😵‍💫'
    },
    {
      nickName: '子龙悟道',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo3109ji5n7mi005oj0i3o40i25lg0pkno',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo3109ji5n7mi005oj0i3o40i25lg0pkno',
      likedCount: '1k+',
      displayTitle: '真正有福气的人，这三点不碰。'
    },
    {
      nickName: 'Aheadhairmedia',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5fa2173840aa77000155fa8f.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/5fa2173840aa77000155fa8f.jpg',
      likedCount: '1k+',
      displayTitle: '金宝哥大闹沙龙 '
    },
    {
      nickName: '与晨,',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/60792655e79883d75c8b2f2c.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/60792655e79883d75c8b2f2c.jpg',
      likedCount: '1w+',
      displayTitle: '这种的我一般目送两百米'
    },
    {
      nickName: '小狗很懒呜呜',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30rhg2epph8005nuevkbg97kn4fgt4r8',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30rhg2epph8005nuevkbg97kn4fgt4r8',
      likedCount: '1w+',
      displayTitle: '终于知道碳循环为啥掉这么快了。。。'
    },
    {
      nickName: '我叫路小雨',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30vs4n0kfm4005o5e3lsg8ku57r97t7o',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30vs4n0kfm4005o5e3lsg8ku57r97t7o',
      likedCount: '1w+',
      displayTitle: '在西双版纳/怎么能不体验一次雨林徒步呢！'
    },
    {
      nickName: '建造思维',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/622daf08e4e624a51343d971.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/622daf08e4e624a51343d971.jpg',
      likedCount: '1k+',
      displayTitle: '怎么有人的身体能这么丝滑 1710331'
    },
    {
      nickName: '陈都灵',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5ac9afe114de41045054fcc1.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/5ac9afe114de41045054fcc1.jpg',
      likedCount: '1w+',
      displayTitle: '真嘟素颜🤍 '
    },
    {
      nickName: '小王是树懒懒懒懒～',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/647acb158e2f44dc33e7bbc2.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/647acb158e2f44dc33e7bbc2.jpg',
      likedCount: '1w+',
      displayTitle: '当时只道是寻常 '
    },
    {
      nickName: 'lele',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/605374bc93e8f7dceacad17d.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/605374bc93e8f7dceacad17d.jpg',
      likedCount: '1w+',
      displayTitle: '中国初代小区的样子 '
    },
    {
      nickName: '粉红色的小鸭',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/645b7f83b46568f580649586.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/645b7f83b46568f580649586.jpg',
      likedCount: '100+',
      displayTitle: '这是谁发明的，我谢谢他.......'
    },
    {
      nickName: '蜜蜂小熊（宁夏）',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30pvgmops7a005p86nm2ln7thrqn0t68',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30pvgmops7a005p86nm2ln7thrqn0t68',
      likedCount: '1w+',
      displayTitle: '听劝113天|宝宝你不再是会被嫌土的自卑鬼了'
    },
    {
      nickName: 'J公司都不是好东西',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/61ed5d66e29249da2eded104.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/61ed5d66e29249da2eded104.jpg',
      likedCount: '1k+',
      displayTitle: '终于给我磕到一口真夫妻'
    },
    {
      nickName: '钟祥珍珍姐',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/61bc428c3296fdcf032ccce6.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/61bc428c3296fdcf032ccce6.jpg',
      likedCount: '100+',
      displayTitle: '无论生活多么不完美，总要继续下去，面对苦 难和现实，唯有努力拼搏，我们相信这么好'
    },
    {
      nickName: 'Yu.46',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/64127d4b281f8089224df629.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/64127d4b281f8089224df629.jpg',
      likedCount: '1w+',
      displayTitle: '柚子 就拜托你了 '
    },
    {
      nickName: 'hahaha_Hannah',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/6329321346794d7a05b7997b.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/6329321346794d7a05b7997b.jpg',
      likedCount: '1k+',
      displayTitle: '当我在清华上学还要当博主参加活动 •͈ᴗ⁃͈★'
    },
    {
      nickName: '是小老弟啊',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/61ba7a579cc2421a7d3f1d1c.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/61ba7a579cc2421a7d3f1d1c.jpg',
      likedCount: '1k+',
      displayTitle: '不是在吃糖就是在吃糖的路上'
    },
    {
      nickName: '丸子日记',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/642d57013efe33e0b0d46e82.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/642d57013efe33e0b0d46e82.jpg',
      likedCount: '1k+',
      displayTitle: '满分火锅蔬菜，全都替你尝一遍~'
    },
    {
      nickName: '禧悦',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30ofcg2jsie7g5niebk8087c5nmc18mg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30ofcg2jsie7g5niebk8087c5nmc18mg',
      likedCount: '100+',
      displayTitle: '一家开在农村的女装工作室'
    },
    {
      nickName: '小A舞蹈留学',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/62fb6e7f29e70193d4ad4e2c.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/62fb6e7f29e70193d4ad4e2c.jpg',
      likedCount: '100+',
      displayTitle: '有的人走路都带风 '
    },
    {
      nickName: '中国国家地理景观',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5f08384c74528b0001cb981c.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/5f08384c74528b0001cb981c.jpg',
      likedCount: '1k+',
      displayTitle: '中国国家地理 |今天是一个神秘而浪漫的日子'
    },
    {
      nickName: '我是香秀',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5f0ace11074bc00001f5aea2.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/5f0ace11074bc00001f5aea2.jpg',
      likedCount: '1w+',
      displayTitle: '姐姐来了 '
    },
    {
      nickName: '泡芙',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5f9a41327a15a3000173da86.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/5f9a41327a15a3000173da86.jpg',
      likedCount: '1k+',
      displayTitle: '圆头扁头一戴头箍就知道了'
    },
    {
      nickName: 'GUNCHILL前哨站',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30rosj580ii005op705tovdbub5sg2a0',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30rosj580ii005op705tovdbub5sg2a0',
      likedCount: '1w+',
      displayTitle: '178｜当我妹妹叫我接她放学，穿帅点时……'
    },
    {
      nickName: '半壁Bambi',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/61b5fd985d0957dd71712e52.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/61b5fd985d0957dd71712e52.jpg',
      likedCount: '1w+',
      displayTitle: '台湾的麻薯和芋泥，强得可怕'
    },
    {
      nickName: '兰岚 Lillian 在美国',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30urtm2a9540040lasf4urik0lpt439o',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30urtm2a9540040lasf4urik0lpt439o',
      likedCount: '1k+',
      displayTitle: '孩子来美国1年半，她的英文怎么样了？'
    },
    {
      nickName: '三哥与焦焦',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30u6f49oc5i005n1nt43he6p5fq49848',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30u6f49oc5i005n1nt43he6p5fq49848',
      likedCount: '100+',
      displayTitle: '这动作是认真的吗？熟练得让人心疼~夫妻日常 内容过于真实 三哥与焦焦'
    },
    {
      nickName: '🌚心碎豆腐脑🌝',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/63091346ea5a9bfd7c647596.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/63091346ea5a9bfd7c647596.jpg',
      likedCount: '1w+',
      displayTitle: '带上皇冠的那一刻，第一视角哦'
    },
    {
      nickName: '私人靖地',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30s4rl3kf2m40456gm1l08f46ts55sbo',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30s4rl3kf2m40456gm1l08f46ts55sbo',
      likedCount: '10+',
      displayTitle: '圆圆 x 三只小山羊'
    },
    {
      nickName: '美嘉',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/64be89485e1c3d56befbad94.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/64be89485e1c3d56befbad94.jpg',
      likedCount: '10+',
      displayTitle: '等三年终于开始扩大场地啦～'
    },
    {
      nickName: '百变小厨坊',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30oa2i1ua26005n5d581k5s5jq8hmjm8',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30oa2i1ua26005n5d581k5s5jq8hmjm8',
      likedCount: '1k+',
      displayTitle: '炒平菇，切记别炒水和直接炒，教你一招，滑嫩'
    },
    {
      nickName: 'Alcohol姜酒精东京～买买买',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30tbfb5ul440048ntmuabppvoosdmi98',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30tbfb5ul440048ntmuabppvoosdmi98',
      likedCount: '7',
      displayTitle: '最没用代🐶 顺利出境'
    },
    {
      nickName: '李特是个搬运工',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30oqoaf9n34605p5t63k56vp974h589o',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30oqoaf9n34605p5t63k56vp974h589o',
      likedCount: '1k+',
      displayTitle: '巴黎时装周吴千语好美'
    },
    {
      nickName: '逸藝艺',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/6332b2fb867ce93b97b65ff0.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/6332b2fb867ce93b97b65ff0.jpg',
      likedCount: '1k+',
      displayTitle: '爽了，真的爽了！这才是好投票'
    },
    {
      nickName: 'Mr Cheung',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5d8765fc0b326b000110c71e.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/5d8765fc0b326b000110c71e.jpg',
      likedCount: '10+',
      displayTitle: '寻找日本中古游戏机供应商 有介绍的有酬'
    },
    {
      nickName: '乎乎',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/65d89b2a01d38b43fb742838.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/65d89b2a01d38b43fb742838.jpg',
      likedCount: '1w+',
      displayTitle: '当年明月的这段采访堪称一绝。'
    },
    {
      nickName: 'Cinnamon',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5fbbc4f90e745f00013bb784.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/5fbbc4f90e745f00013bb784.jpg',
      likedCount: '1k+',
      displayTitle: 'chase存款过亿留念'
    },
    {
      nickName: '十八线不知名班主任',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo310468dpmm0105p74bll0a3ljvul1qoo',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo310468dpmm0105p74bll0a3ljvul1qoo',
      likedCount: '1k+',
      displayTitle: '榨菜肉末粉｜对这碗粉毫无抵抗力'
    },
    {
      nickName: '钙奶小饼干',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30u3ou2cm5c50490tr0ebi1pjjvi0bl0',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30u3ou2cm5c50490tr0ebi1pjjvi0bl0',
      likedCount: '100+',
      displayTitle: '小水现在算泰国一线女星吗？'
    },
    {
      nickName: '阚清子',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/5af99c3bd2c8a534f92da600.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/5af99c3bd2c8a534f92da600.jpg',
      likedCount: '1k+',
      displayTitle: '🎀今日不减肥😂 '
    },
    {
      nickName: '胖崽崽和南瓜瓜',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/60937c5a9e0bc600013f12ef.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/60937c5a9e0bc600013f12ef.jpg',
      likedCount: '10+',
      displayTitle: '在家拍百岁照照片之道具🍊'
    },
    {
      nickName: '莎莎 Samantha',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30uegk7jt5idg5pdl017jkmmh09b8ohg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30uegk7jt5idg5pdl017jkmmh09b8ohg',
      likedCount: '1k+',
      displayTitle: '什么零配，全靠演技，国外旅游顺便买到爱马仕'
    },
    {
      nickName: '我的小糯米呀',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/61e2583a0000000021020580.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/61e2583a0000000021020580.jpg',
      likedCount: '10+',
      displayTitle: '路过一片很好看的花海📨🌷'
    },
    {
      nickName: '梦想环骑中国',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30vq1s5knm26g5ngde65084bvp1tbcr8',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30vq1s5knm26g5ngde65084bvp1tbcr8',
      likedCount: '1k+',
      displayTitle: '宾馆逸事😂😂😂'
    },
    {
      nickName: '小哭包柒',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30o21ucpahq0g5nue6fs09226c6bu098',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30o21ucpahq0g5nue6fs09226c6bu098',
      likedCount: '1k+',
      displayTitle: '阮经天的肩膀也太宽了！！！！！'
    },
    {
      nickName: '卡斯拉',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30tr35fpp4s005oem79v8dc6aebm86to',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30tr35fpp4s005oem79v8dc6aebm86to',
      likedCount: '1k+',
      displayTitle: '晚晚说没有她，就没有木木美术馆'
    },
    {
      nickName: '猴猴',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/63f76dbdfca3d98c0e1affb2.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/63f76dbdfca3d98c0e1affb2.jpg',
      likedCount: '1k+',
      displayTitle: '开始期待春游野餐了！'
    },
    {
      nickName: '爱意随风散',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30vg56lrd66005o7m9kh08p1v8vg8p50',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30vg56lrd66005o7m9kh08p1v8vg8p50',
      likedCount: '1w+',
      displayTitle: '已经开始期待夏天了！安利给全世界的夏季饮'
    },
    {
      nickName: '热心网友',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo310c276ou6e005p4083cn561gscosqd8',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo310c276ou6e005p4083cn561gscosqd8',
      likedCount: '1w+',
      displayTitle: '去年过年vs今年过年'
    },
    {
      nickName: '绿老头的世界',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30sqlt5rok4005ornhm97rsa628qfh7g',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/1040g2jo30sqlt5rok4005ornhm97rsa628qfh7g',
      likedCount: '1w+',
      displayTitle: 'i人表达爱意的小动作be like：'
    },
    {
      nickName: '甜甜的田',
      avatar: 'https://sns-avatar-qc.xhscdn.com/avatar/63415b55cf23fe634d89e74f.jpg',
      cover: 'https://sns-avatar-qc.xhscdn.com/avatar/63415b55cf23fe634d89e74f.jpg',
      likedCount: '100+',
      displayTitle: '两岁女宝｜好像拍到了人生照片！太美了吧～'
    }
  ]

  build() {
    Column() {
      Image($r('app.media.ic_xhs_top'))
        .width('100%')
      WaterFlow() {
        ForEach(this.list, (item: WaterFlowItem) => {
          this.flowItemBuilder(item)
        })
      }
      .edgeEffect(EdgeEffect.Spring)
      .backgroundColor('#f3f3f3')
      .rowsGap(5)
      .columnsGap(5)
      .columnsTemplate('1fr 1fr')
      .padding(5)
      .layoutWeight(1)

      Image($r('app.media.ic_xhs_bottom'))
        .width('100%')
    }
  }

  @Builder
  flowItemBuilder(item: WaterFlowItem) {
    FlowItem() {
      Column() {
        Image(item.cover)
          .width('100%')
          .height(180)
          .objectFit(ImageFit.Cover)
          .backgroundColor(Color.Gray)
        Column({ space: 5 }) {
          Text(item.displayTitle)
            .maxLines(2)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .fontSize(14)
            .width('100%')
          Row() {
            Row({ space: 5 }) {
              Image(item.avatar)
                .width(20)
                .height(20)
                .borderRadius(10)
              Text(item.nickName)
                .fontSize(12)
                .fontColor('#666')
            }

            Row({ space: 5 }) {
              Image($r('app.media.ic_public_favor'))
                .width(15)
                .fillColor(Color.Gray)
              Text(item.likedCount)
                .fontColor(Color.Gray)
                .fontSize(12)
            }
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .padding(10)
      }
      .borderRadius(8)
      .clip(true)
      .backgroundColor(Color.White)
    }
  }
}