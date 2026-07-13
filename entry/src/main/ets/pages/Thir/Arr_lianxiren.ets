@CustomDialog //自定义弹出框
struct AddContactDialog {
  controller?: CustomDialogController;
  addCallback: (name: string) => void = () => {};
  @State inputName: string = "";

  build() {
    Column({ space: 20 }) {
      Text("新增联系人")
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20 })

      TextInput({ text: this.inputName, placeholder: "请输入联系人姓名" })
        .width("90%")
        .height(44)
        .onChange((val: string) => {
          this.inputName = val;
        })

      Row({ space: 30 }) {
        Button("取消", { stateEffect: true })
          .width(100)
          .height(42)
          .fontSize(16)
          .backgroundColor("#dddddd")
          .fontColor("#333333")
          .onClick(() => {
            this.controller?.close();
          })

        Button("确认", { stateEffect: true })
          .width(100)
          .height(42)
          .fontSize(16)
          .backgroundColor("#007DFF")
          .fontColor(Color.White)
          .onClick(() => {
            if (this.inputName.trim().length > 0) {
              this.addCallback(this.inputName.trim());
            }
            this.controller?.close();
          })
      }
      .margin({ bottom: 20 })
    }
    .width("90%")
    .borderRadius(12)
    .backgroundColor(Color.White)
  }
}

@Entry
@Component
struct ArrayTest {
  @State names: string[] = ["徐鹏", "郭涛", "黄勇", "王芳", "赵丽"];
  @State checkedList: boolean[] = [false, false, false, false, false];
  @State starList: boolean[] = [false, false, false, false, false];
  dialogController: CustomDialogController | null = null;

  aboutToAppear(): void {
    this.dialogController = new CustomDialogController({
      builder: AddContactDialog({
        addCallback: (newName: string) => {
          this.names.unshift(newName);
          this.checkedList.unshift(false);
          this.starList.unshift(false);
        }
      }),
      autoCancel: true
    });
  }

  deleteCheckedContacts(): void {
    let newNames: string[] = [];
    let newChecked: boolean[] = [];
    let newStar: boolean[] = [];
    for (let i = 0; i < this.names.length; i++) {
      if (!this.checkedList[i]) {
        newNames.push(this.names[i]);
        newChecked.push(this.checkedList[i]);
        newStar.push(this.starList[i]);
      }
    }
    this.names = newNames;
    this.checkedList = newChecked;
    this.starList = newStar;
  }

  build() {
    Column() {
      Row() {
        Text("联系人")
          .fontSize(32)
          .fontWeight(FontWeight.Bold)
          .layoutWeight(1)

        Row({ space: 15 }) {
          Button("取消", { stateEffect: true })
            .fontSize(15)
            .width(75)
            .height(36)
            .backgroundColor("#bbbbbb")
            .fontColor(Color.White)
            .borderRadius(18)

          Button("+", { stateEffect: true })
            .fontSize(18)
            .width(50)
            .height(36)
            .backgroundColor("#bbbbbb")
            .fontColor(Color.White)
            .borderRadius(18)
            .onClick(() => {
              this.dialogController?.open();
            })
        }
      }
      .width("100%")
      .padding({ left: 20, right: 20, top: 12, bottom: 12 })

      List({ space: 6 }) {
        ForEach(this.names, (item: string, index: number) => {
          ListItem() {
            Row() {
              Checkbox()
                .select(this.checkedList[index])
                .onChange((isSelect: boolean) => {
                  this.checkedList[index] = isSelect;
                  this.checkedList = [...this.checkedList];
                })
                .width(26)
                .height(26)

              Image($r("app.media.ic_public_user"))
                .width(52)
                .height(52)
                .borderRadius(26)
                .margin({ left: 12, right: 16 })

              Text(item)
                .fontSize(24)
                .layoutWeight(1)

              Image(this.starList[index] ? $r("app.media.ic_star_fill") : $r("app.media.ic_public_star"))
                .width(30)
                .height(30)
                .fillColor("#333333")
                .margin({ right: 10 })
                .onClick(() => {
                  this.starList[index] = !this.starList[index];
                  this.starList = [...this.starList];
                })
            }
            .width("100%")
            .padding({ top: 14, bottom: 14, left: 16, right: 16 })
            .backgroundColor(Color.White)
            .borderRadius(10)
          }
        }, (item: string) => item)
      }
      .layoutWeight(1)
      .width("100%")
      .padding({ left: 12, right: 12 })
      .divider({ strokeWidth: 1, color: "#eee" })

      Button("删除", { stateEffect: true })
        .width(140)
        .height(48)
        .margin({ bottom: 25 })
        .fontSize(18)
        .backgroundColor(Color.Red)
        .fontColor(Color.White)
        .borderRadius(24)
        .onClick(() => {
          this.deleteCheckedContacts();
        })
    }
    .width("100%")
    .height("100%")
    .backgroundColor("#f2f2f2")
  }
}