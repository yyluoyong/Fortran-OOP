[Fortran](https://baike.baidu.com/item/FORTRAN/674319)是世界上最早出现的计算机高级程序设计语言，主要用于科学与工程计算领域。Fortran的几个重要的版本是：

- FORTRAN 77，现在仍然可以看到很多使用该版本写的代码，比如Lapack里面的代码。
- Fortran 90，最重要的改进是引入了自由格式代码。
- Fortran 2003，该版本改进了衍生类型，支持面向对象编程。

Fortran语言的特点是比较严谨，语法和Matlab有相似之处。但是和Python、Java等高级语言相比，如果要使用其面向对象的特性，仍然有不少限制。

使用Fortran实现面向对象编程一个很重要的关键字就是 **class**，该关键字只能用于可分配数据项（**allocatable**）、指针（**pointer**）或者虚元。**class** 关键字和 **type** 关键字的不同之处在于，前者可以实现参数的动态绑定，即面向对象一个很重要的特性——多态。

以下代码实现了一个使用参数动态绑定的过程。抽象类 **BaseSolver** 包含了：抽象类 **BaseTimeSolver**、抽象类 **BaseSpaceSolver**，**MySolver** 是 **BaseSolver** 的子类，给 **MySolver** 传入的是 **BaseTimeSolver** 的子类 **MyTimeSolver** 和 **BaseSpaceSolver** 的子类 **MySpaceSolver**。

代码中涉及到了很多Fortran语言的关键字，一方面可以看出该语言确实十分严谨，另一方面也让人觉得较为繁琐。关于Fortran语言更多的知识可以参考后面列出的资料[1][2][3]，另外可以参考官方给出的语法规范。

（注：《Fortran95/2003程序设计(第3版)》这本书介绍了不少这部分的内容，书本上源码的个别地方有误需要注意。**《Modern Fortran Explained》这部分内容讲解比较详细，推荐**。《Modern Fortran: Style and Usage》这本书源码字体排版对阅读来说显得很不友好。）

[1]: Stephen J.Chapman. Fortran95/2003程序设计(第3版), 中国电力出版社, 2009.

[2]: Michael Metcalf, John Reid, Malcolm Cohen. Modern Fortran Explained. OUP Oxford, 2011.

[3]: Norman S. Clerman, Walter Spector. Modern Fortran: Style and Usage.  Cambridge University Press, 2011.
