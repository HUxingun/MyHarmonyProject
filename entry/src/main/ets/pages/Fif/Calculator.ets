@Entry
@Component
struct CalcPage {
  @State displayText: string = "0";
  private num1: number | null = null;
  private op: string | null = null;
  private num2: number | null = null;
  private isNewNum: boolean = false;

  inputNum(key: string) {
    if (this.isNewNum) {
      this.displayText = key === "." ? "0." : key;
      this.isNewNum = false;
    } else {
      if (key === "." && this.displayText.includes(".")) return;
      if (this.displayText === "0" && key !== ".") {
        this.displayText = key;
      } else {
        this.displayText += key;
      }
    }
  }

  setOp(symbol: string) {
    const curr = parseFloat(this.displayText);
    if (this.num1 === null) {
      this.num1 = curr;
    } else if (this.op) {
      this.calcResult();
      this.num1 = parseFloat(this.displayText);
    }
    this.op = symbol;
    this.isNewNum = true;
  }

  calcResult() {
    if (this.num1 === null || this.op === null) return;
    this.num2 = parseFloat(this.displayText);
    let res = 0;
    switch (this.op) {
      case "+": res = this.num1 + this.num2; break;
      case "-": res = this.num1 - this.num2; break;
      case "×": res = this.num1 * this.num2; break;
      case "÷":
        if (this.num2 === 0) {
          this.displayText = "错误";
          this.resetAll();
          return;
        }
        res = this.num1 / this.num2;
        break;
    }
    const strRes = Number.isInteger(res) ? res.toString() : res.toFixed(6).replace(/\.?0*$/, "");
    this.displayText = strRes;
    this.resetTemp();
  }

  clearEntry() {
    this.displayText = "0";
    this.isNewNum = true;
  }

  resetAll() {
    this.displayText = "0";
    this.num1 = null;
    this.op = null;
    this.num2 = null;
    this.isNewNum = false;
  }

  resetTemp() {
    this.num1 = null;
    this.op = null;
    this.num2 = null;
    this.isNewNum = true;
  }

  handleInput(val: string) {
    if (val === "CE") { this.clearEntry(); return; }
    if (val === "C") { this.resetAll(); return; }
    if (["+", "-", "×", "÷"].includes(val)) { this.setOp(val); return; }
    if (val === "=") { this.calcResult(); return; }
    this.inputNum(val);
  }

  @Builder
  CalcBtn(text: string, bgColor: ResourceColor = '#f8f8f8', txtColor: ResourceColor = '#000') {
    Button(text, { type: ButtonType.Normal, stateEffect: true })
      .width("100%")
      .height("100%")
      .fontSize(24)
      .backgroundColor(bgColor)
      .fontColor(txtColor)
      .onClick(() => {
        this.handleInput(text);
      })
  }

  build() {
    Column() {
      Text(this.displayText)
        .width("100%")
        .height(80)
        .fontSize(40)
        .textAlign(TextAlign.End)
        .padding({ right: 16 })
        .backgroundColor("#d0d8e0")
        .borderRadius(12)
        .margin({ bottom: 12 })

      Grid() {
        // 第1行
        GridItem() { this.CalcBtn("CE") }
        GridItem() { this.CalcBtn("C") }
        GridItem() { this.CalcBtn("÷") }
        GridItem() { this.CalcBtn("×") }

        // 第2行
        GridItem() { this.CalcBtn("7") }
        GridItem() { this.CalcBtn("8") }
        GridItem() { this.CalcBtn("9") }
        GridItem() { this.CalcBtn("-") }

        // 第3行
        GridItem() { this.CalcBtn("4") }
        GridItem() { this.CalcBtn("5") }
        GridItem() { this.CalcBtn("6") }
        GridItem() { this.CalcBtn("+") }

        // 第4行
        GridItem() { this.CalcBtn("1") }
        GridItem() { this.CalcBtn("2") }
        GridItem() { this.CalcBtn("3") }

        GridItem() {
          this.CalcBtn("=", '#0099ff', '#fff')
        }
        .rowStart(4) //第四行开始，到第五行结束
        .rowEnd(5)
        .columnStart(4)

        GridItem() {
          this.CalcBtn("0")
        }
        .columnStart(1)
        .columnEnd(2)
        .rowStart(5)

        // 小数点
        GridItem() { this.CalcBtn(".") }
        .columnStart(3)
        .rowStart(5)
      }
      .columnsTemplate("1fr 1fr 1fr 1fr")//四列
      .rowsTemplate("1fr 1fr 1fr 1fr 1fr")//五行
      .rowsGap(10)
      .columnsGap(10)
      .width("100%")
      .height("60%")
    }
    .width("90%")
    .margin({ left: "5%", right: "5%", top: 30 })
    .padding(16)
    .border({ width: 2, color: "#333" })
    .borderRadius(16)
    .backgroundColor("#fff")
  }
}