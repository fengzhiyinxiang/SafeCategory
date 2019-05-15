SafeCategory
==============

源起
==============

1.在看深入理解计算机系统这本书的时候，看到一种对IO方法进行异常判断的包装方法的写法，也见过一些个人或者团队有类似的写法。  
2.之前都是手动判断到处都是if else，开发效率和可读性都有点差。有时候懒得加判断，线上有时会因为一些非常简单的方式崩溃，这个组件实际上是想做一点容错处理。  

说明
==============

1.对一些常用的方法使用类别方式做了一层包装，避免一些异常数据及操作造成的崩溃问题。  
2.可以按照pod方式添加在项目里作为一个组件使用。  
3.考虑过使用hook的方式，异常数据的连续传递导致不可预知的问题，个人认为太过危险。  
4.不同的业务对于api的使用率一定有所差异，用户可以根据业务具体情况按照这个思路去扩展分类。  

性能
==============
性能方面相对不包装有一定损失，不过影响不大，比起一些异常的数据或者操作引起的崩溃来说，收益明显。

特性
==============
- **无侵入性**: 类别方式，引入项目之后爱用不用。
- **轻量**: 尽量少的函数及方法，覆盖常规使用场景。
- **简单**:学习成本低，使用简单。


使用方法
==============
1.函数调用 
如果要使用一个对象，这个对象的值为nil会引起崩溃等问题，比如声明NSString的引用，可以这样写  
SafeString(string)                                 

2.方法调用
如果调用一个方法，这个方法可能引起崩溃，比如NSMutableArray添加对象，可以这样写  
NSMutableArray *mutableArray = [NSMutableArray array];  
NSString *string = @“string”;  
[mutableArray safeAddObject: string];  

安装
==============

### CocoaPods

1. 在 Podfile 中添加 `pod 'SafeCategory'`。
2. 执行 `pod install` 或 `pod update`。
3. 导入 \<SafeCategory/SafeCategory.h\>。

### 手动安装

1. 下载 SafeCategory 文件夹内的所有内容。
2. 将 SafeCategory 内的源文件添加(拖放)到你的工程。
3. 导入 \<SafeCategory/SafeCategory.h\>。

系统要求
==============
该项目最低支持 `iOS 6.0` 和 `Xcode 8.0`。

许可证
==============
SafeCategory 使用 MIT 许可证，详情见 LICENSE 文件。

