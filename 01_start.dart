// 定义一个dart函数
void printInteger(int aNumber) {
  print('The number is $aNumber.'); // 输出到控制台
}

//dart的关键字学习演示
//延迟初始化一个变量
late String description;



// 开始一个应用程序
void main() {
  var number = 42; // 声明并初始化一个变量
  printInteger(number); // 调用一个函数

  description = 'Feijoada!';
  print(description);

  //默认值
  int? lineCount;
  assert(lineCount == null);
  // Final 和 Const
  /**一个 final 变量只可以被赋值一次；一个 const 变量是一个编译时常量 (const 变量同时也是 final 的) */
  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';
}