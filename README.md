# 基础工具使用说明

## [apktool2.0.0](https://ibotpeaches.github.io/Apktool/)

* 负责破解apk，普通的修改apk为rar解包得出的xml等文件是加密的，用这个工具解包就可以查看并修改，
* 转成smali文件。smali是在dalvik虚拟机执行的核心代码，有自己的语法，java编译成smali，打包成dex在vm上执行
* 我们不能修改java代码，但可以直接修改smali代码，然后回编成dex，覆盖原来的dex，打包成apk，就实现了修改代码
* [百度网盘地址](http://pan.baidu.com/s/1miB7FIC)

语法：
```
cd apktool2.0.0
## 反编译
apktool d xxx.apk 
## 回编译
apktool b xxx文件夹
```

## [dex2jar-2.0](https://github.com/pxb1988/dex2jar)

* 如果想查看java代码，怎么办?
可以使用该工具的命令`d2j-dex2jar.bat`
* dex文件怎么得来？
修改`xxx.apk`文件为`xxx.rar`，直接解压缩，就可以获得`classes.dex`文件
* [百度网盘地址](http://pan.baidu.com/s/1jINNbEI)

语法：
```
cd dex2jar-2.0
d2j-dex2jar.bat D:\Android\apk\Bmi\classes.dex
## 会在dex2jar-2.0目录获得classes.dex.dex2jar.jar文件
```

## [jd-gui-windows-1.4.0](http://jd.benow.ca/)

* 使用本工具查看上一步获得的classes.dex.dex2jar.jar文件,
就可以直接预览java源码了
如图：
![](https://camo.githubusercontent.com/8286f65f4b148a27de05a78fa366074543e89ce3/687474703a2f2f6a642e62656e6f772e63612f696d672f73637265656e73686f7431372e706e67)
* [百度网盘地址](http://pan.baidu.com/s/1o8tmGsy)

## [jadx-0.6.1-dev-build226](https://github.com/skylot/jadx/tree/master/jadx-gui/src/main/java/jadx/gui)

* 比jd-gui-windows更方便 
![](https://camo.githubusercontent.com/bd3c0ea851c23c4535e43590a86c940a0786faa6/687474703a2f2f736b796c6f742e6769746875622e696f2f6a6164782f6a6164782d6775692e706e67)
* [百度网盘地址](http://pan.baidu.com/s/1gfM7lw3)

# 高级工具

>以上工具是apk反编译的基础操作，但是命令行操作起来比较繁琐，所以推荐一些高级工具，对上述的基础工具做了整合，极为便捷。

## [AndroidKiller1.3.1](http://www.pd521.com/forum.php?mod=viewthread&tid=136&extra=page%3D1&page=1)

>强烈推荐,工具整合的相当完善
>[百度云盘地址](http://pan.baidu.com/s/1slQW5m1)

![](https://github.com/hammercui/android-reverse/raw/master/preview/apkkill1.png)

![](https://github.com/hammercui/android-reverse/raw/master/preview/apkkill2.png)


# 基础知识

## APK、Dalvik字节码和smali文件

[APK反编译之一：基础知识--smali文件阅读](http://blog.csdn.net/chenrunhua/article/details/41250613):本篇文章结合一个activity.smali文件，来讲解smali的基础语法。

[smali语法简析](http://blog.csdn.net/jimmy5z/article/details/12119739):更为详细的讲解
* 讲述v本地寄存器，p参数寄存器的区别
* Long和Double类型是64位的，需要2个寄存器
* 非静态参数寄存器，p0代指`this`