// 1.8 库的导入
// import 'package:test/test.dart';

// 1.9 异步
String lookUpVersion() => '1.0.0';

// 1.1 定义一个dart函数
void printInteger(int aNumber) {
  print('The number is $aNumber.'); // 输出到控制台
}

//1.4 函数 
/**Dart 是一种真正面向对象的语言，所以即便函数也是对象并且类型为 Function，这意味着函数可以被赋值给变量或者作为其它函数的参数。
你也可以像调用函数一样调用 Dart 类的实例。 */

// bool isNoble(int atomicNumber) {
  // return _nobleGases[atomicNumber] != null;
// }

// 不定义类型依然有效
isNoble1(atomicNumber) {
  // return _nobleGases1[atomicNumber] != null;
}

// 甚至当函数只有一个表达式还可以这样定义“语法 => 表达式 是 { return 表达式; } 的简写， => 有时也称之为 箭头 函数。”
// bool isNoble2(int atomicNumber) => _nobleGases2[atomicNumber] != null;

bool topLevel = true;

//1.2 dart的关键字学习演示
//延迟初始化一个变量
late String description;


// 1.5 异常
void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

//1.6类
class Point {
  double? x; // Declare instance variable x, initially null.
  double? y; // Declare y, initially null.
  double z = 0; // Declare z, initially 0.
}

// 抽象类
abstract class AbstractContainer {
  // Define constructors, fields, methods...

  void updateChildren(); // Abstract method.
}

// 重写和扩展类
class SmartAbstractContainer extends AbstractContainer {
  @override
  void updateChildren(){
    print('nihao');
  }
}

// 1.7 泛型
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}


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

  //1.3 dart内置数据类型

  // Number:  int  and  double 
      var x = 1;
      var y = 1.1;
    // Numbers的一些操作
      assert((3 << 1) == 6); // 0011 << 1 == 0110
      assert((3 | 4) == 7); // 0011 | 0100 == 0111
      assert((3 & 4) == 0); // 0011 & 0100 == 0000

  //String
      var s1 = 'Single quotes work well for string literals.';
      var s2 = "Double quotes work just as well.";
      var s3 = '''
                You can create
                multi-line strings like this one.
                ''';
      // 在字符串前加上 r 作为前缀创建 “raw” 字符串（即不会被做任何处理（比如转义）的字符串）
      var s = r'In a raw string, not even \n gets special treatment.';
  // Number 和 Strings 之间的转化
      // String -> int
      var one = int.parse('1');
      assert(one == 1);

      // String -> double
      var onePointOne = double.parse('1.1');
      assert(onePointOne == 1.1);

      // int -> String
      String oneAsString = 1.toString();
      assert(oneAsString == '1');

      // double -> String
      String piAsString = 3.14159.toStringAsFixed(2);
      assert(piAsString == '3.14');

      // bool
      var bool_1=true;

      // lists(Arrays)
      var list_1=[1,2,3];

      // Maps(关联keys和values的数据类型)
       var gifts = {
                  // Key:    Value
                  'first': 'partridge',
                  'second': 'turtledoves',
                  'fifth': 'golden rings'
                };
      /**
        常用的方法有
        var gifts = {'first': 'partridge'};
        gifts['fourth'] = 'calling birds'; // Add a key-value pair

        使用 .length 可以获取 Map 中键值对的数量：
        var gifts = {'first': 'partridge'};
        gifts['fourth'] = 'calling birds';
        assert(gifts.length == 2);

        在一个 Map 字面量前添加 const 关键字可以创建一个 Map 编译时常量：
        final constantMap = const {
          2: 'helium',
          10: 'neon',
          18: 'argon',
        };// constantMap[2] = 'Helium'; // This line will cause an error.
       */

      // 不常用的集中内置类型
      /**
      在 Dart 中，runes 公开了字符串的 Unicode 码位。
      如果你需要读写单个 Unicode 字符，可以使用 characters 包中定义的 characters getter。
      它将返回 Characters 对象作为一系列 grapheme clusters 的字符串。
      Symbol 表示 Dart 中声明的操作符或者标识符。你几乎不会需要 Symbol，但是它们对于那些通过名称引用标识符的 API 很有用，
      因为代码压缩后，尽管标识符的名称会改变，但是它们的 Symbol 会保持不变。
       */

  //  匿名方法
        const list = ['apples', 'bananas', 'oranges'];
      list.map((item) {
        return item.toUpperCase();
      }).forEach((item) {
        print('$item: ${item.length}');
      });

  //语法和作用域
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }

  // 表达式（dart中由运算符和数值的组合）
      // 算术
        assert(2 + 3 == 5);
        assert(2 - 3 == -1);
        assert(2 * 3 == 6);
        assert(5 / 2 == 2.5); // Result is a double
        assert(5 ~/ 2 == 2); // Result is an int
        assert(5 % 2 == 1); // Remainder

        assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

      // 关系
        assert(2 == 2);
        assert(2 != 3);
        assert(3 > 2);
        assert(2 < 3);
        assert(3 >= 3);
        assert(2 <= 3);
      
      // 赋值
      // var  b ??= null;
        var a = 2; // Assign using =
        a *= 3; // Assign and multiply: a = a * 3
        assert(a == 6);

        // 位运算
        final value = 0x22;
        final bitmask = 0x0f;

        assert((value & bitmask) == 0x02); // AND
        assert((value & ~bitmask) == 0x20); // AND NOT
        assert((value | bitmask) == 0x2f); // OR
        assert((value ^ bitmask) == 0x2d); // XOR
        assert((value << 4) == 0x220); // Shift left
        assert((value >> 4) == 0x02); // Shift right
        assert((value >>> 4) == 0x02); // Unsigned shift right
        assert((-value >> 4) == -0x03); // Shift right
        assert((-value >>> 4) > 0); // Unsigned shift right

      // ……其他表达式

   // 控制流程语句
      // if和else
      if (4==3) {
          print('Buhao');
        } else if (4==4) {
          print('Nihao');
        } else {
          print('Chaojihao');
        }

        // for循环
        var message = StringBuffer('Dart is fun');
        for (var i = 0; i < 5; i++) {
          message.write('!');
        }

        // while 和do
        var i=3;
        while (i>0) {
          print('9');
          i--;
        }
        i=3;
        do {
          i--;
          print('8');
        } while (i>0);
        // switch和case
        var command = 'OPEN';
        switch (command) {
          case 'CLOSED':
            print('1');
            break;
          case 'PENDING':
            print('2');
            break;
          case 'APPROVED':
            print('3');
            break;
          case 'DENIED':
            print('4');
            break;
          case 'OPEN':
            print('5');
            break;
          default:
            print('6');
          }
      // 断言
      assert(number < 100);
  // 异常
      try {
        misbehave();
      } catch (e) {
        print('main() finished handling ${e.runtimeType}.');
      }
      // 对于final 无论有没有抛出异常都要执行

  // 调用类
      var point = Point();
      point.x = 4; // Use the setter method for x.
      assert(point.x == 4); // Use the getter method for x.
      assert(point.y == null); // Values default to null.

  // 泛型化的字面量
      var names = <String>['Seth', 'Kathy', 'Lars'];
      var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
      var pages = <String, String>{
        'index.html': 'Homepage',
        'robots.txt': 'Hints for web robots',
        'humans.txt': 'We are people, not machines'
  };
}