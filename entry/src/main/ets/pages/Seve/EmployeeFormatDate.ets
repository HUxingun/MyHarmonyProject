// 定义部门接口
interface Department {
  departmentName: string
  employees?: Employee[]
  children?: Department[]
}

// 定义员工接口
interface Employee {
  username: string
  avatar: ResourceStr
  gender: string
  birth: number
}

// 树形部门数据
const treeData: Department[] = [
  {
    departmentName: '软件开发部',
    // 子部门
    children: [{
      departmentName: '前端',
      children: [
        {
          departmentName: 'IOS',
          employees: [
            {
              username: '张姗',
              avatar: $r('app.media.user_02'),
              gender: '女',
              birth: 1693039237877,
            },
          ]
        },
        {
          departmentName: 'web',
          employees: [
            {
              username: '张杉',
              avatar: $r('app.media.user_03'),
              gender: '女',
              birth: 1693039237877,
            },
            {
              username: '张彡',
              avatar: $r('app.media.user_04'),
              gender: '女',
              birth: 1693039237877,
            },
          ]
        }
      ],
    }],
    employees: [
      {
        username: '张珊',
        avatar: $r('app.media.user_01_1'),
        gender: '女',
        birth: 1693039237877,
      },
    ]
  },
  {
    departmentName: '人事部',
    // 当前部门人员
    employees: [
      {
        username: '李思',
        avatar: $r('app.media.user_05'),
        gender: '女',
        birth: 1693039237877,
      },
      {
        username: '王舞',
        avatar: $r('app.media.user_06'),
        gender: '女',
        birth: 1693039237877,
      },
    ],
  },
]

// 递归遍历树形部门，提取全部员工
function getEmployeeList(departmentList: Department[]): Employee[] {
  // 找出所有的Employee 保存到一个数组中
  let employeeList: Employee[] = []

  const treeToList = (tree: Department[]) => {
    for (let index = 0; index < tree.length; index++) {
      const depart = tree[index]
      // 有员工就添加
      if (depart.employees) {
        employeeList.push(...depart.employees)
      }
      // 有子部门就继续去找人
      if (depart.children) {
        treeToList(depart.children)
      }
    }
  }

  treeToList(departmentList)

  return employeeList
}

@Entry
@Component
struct FormatDate {
  list: Employee[] = getEmployeeList(treeData)

  formatDate(timestamp: number): string {
    const date = new Date(timestamp)
    const year = date.getFullYear()
    const month = (date.getMonth() + 1).toString().padStart(2, '0')
    const day = date.getDate().toString().padStart(2, '0')
    return `${year}-${month}-${day}`
  }

  build() {
    Column() {
      Text('本公司所有员工')
        .titleStyle()

      List({ space: 10 }) {
        ForEach(this.list, (item: Employee) => {
          ListItem() {
            Row({ space: 10 }) {
              Image(item.avatar)
                .width(40)
                .height(40)
                .borderRadius(20)
              Text(item.username)
                .fontWeight(900)
              Text(this.formatDate(item.birth))
                .fontWeight(900)
              Text(item.gender)
                .fontWeight(900)
            }
            .width('100%')
            .justifyContent(FlexAlign.Start)
            .listStyle()
          }
        })
      }
      .padding(20)
    }
    .columnStyle()
  }

  @Styles
  columnStyle() {
    .padding(20)
    .backgroundColor('#f6f6f6')
    .height('100%')
  }

  @Styles
  listStyle() {
    .backgroundColor(Color.White)
    .width('100%')
    .padding(10)
    .borderRadius(10)
  }
}

@Extend(Text)
function titleStyle() {
  .width('100%')
  .border({ width: { left: 2 }, color: Color.Red })
  .padding(5)
  .fontWeight(900)
}