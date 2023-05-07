
 1、 dart关键字学习
 下面的表格中列出了 Dart 语言所使用的关键字。

abstract  	  else	          import 	        show 1
as 	          enum	          in	            static 
assert	      export 	      interface 	    super
async 	      extends	      is	            switch
await 	      extension 	  late 	            sync 
break	      external 	      library 	        this
case	      factory 	      mixin 	        throw
catch	      false	          new	            true
class	      final	          null	-           try
const	      finally	      on 	            typedef 
continue	  for	          operator     	    var
covariant 	  Function 	      part 	            void
default	      get 	          required 	        while
deferred 	  hide 	          rethrow	        with
do	          if	          return	        yield 
dynamic 	  implements 	  set 	 
应该避免使用这些单词作为标识符。但是，带有上标的单词可以在必要的情况下作为标识符：

带有上标 1 的关键字为 上下文关键字，只有在特定的场景才有意义，它们可以在任何地方作为有效的标识符。

带有上标 2 的关键字为 内置标识符，这些关键字在大多数时候都可以作为有效的标识符，但是它们不能用作类名或者类型名或者作为导入前缀使用。

带有上标 3 的关键字为 Dart 1.0 发布后用于 支持异步 相关内容。不能在由关键字 async、async* 或 sync* 标识的方法体中使用 await 或 yield 作为标识符。

其它没有上标的关键字为 保留字，均不能用作标识符。
 