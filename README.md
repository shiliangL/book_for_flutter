# 小书 FlutterBook

#### 项目截图

#### 项目文件

#### 项目目标

#### Flutter 布局

- 推荐学习这里的[flutter-study](https://github.com/yang7229693/flutter-study)总结 

> 基本相关介绍 Flutter 中的一些布局特性

- 边界约束(box constraints)，是指 widget 可以按照指定限定条件，来决定自身如何占用布局空间;
- 约束种类,flutter 中的 widget 是由底层的 RenderBox 渲染的,渲染的边界  约束（constraints）由父级给出。widget 在这些约束下调整自身尺寸。flutter 布局三种约束,某些约束可以在 widget 本身内定义

```
尽可能大的约束，例如Center、ListView等；
跟随内容大小的约束，例如Transform、Opacity等；
指定尺寸的约束，例如Image、Text等；
```

> widget 详解

- 在 Flutter 中，我们平时自定义的 widget，一般都是继承自 StatefulWidget 或 StatelessWidget（并不是只有这两种），这两种 widget 也是目前最常用的两种。

- 如果一个控件自身状态不会去改变，创建了就直接显示，不会有色值、大小或者其他属性的变化，这种 widget 一般都是继承自 StatelessWidget，常见的有 Container、ScrollView 等。

- 如果一个控件需要动态的去改变或者相应一些状态，例如点击态、色值、内容区域等，那么一般都是继承自 StatefulWidget，常见的有 CheckBox、AppBar、TabBar 等。其实单纯的从名字也可以看出这两种 widget 的区别，这两种 widget 都是继承自 Widget 类。
