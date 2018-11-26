import 'package:flutter/material.dart';
import 'package:book_for_flutter/widget/my_drawer.dart';
import 'package:book_for_flutter/navBarView/nav_index.dart';
import 'package:book_for_flutter/navBarView/nav_list.dart';
import 'package:book_for_flutter/navBarView/nav_other.dart';
import 'package:book_for_flutter/navBarView/nav_component.dart';


class MyHome extends StatefulWidget {
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  static int _currentIndex = 0;
  List<Widget> _pageTabs;
  PageController _pageTabscontroller;

  @override
  void initState() {
    super.initState();
    _buildBottomNavigationBar();
    _pageTabs = [
      MyIndex(),
      MyList(),
      MyComponent(),
      MyOther()
    ];
    _pageTabscontroller = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    super.dispose();
  }

  // 什么意思
  Future<bool> _fetchPop() {
    return Future.value(false);
  }

  //构建底部tabs导航
  _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (index) {
        if (index == _currentIndex) return;
        setState(() {
          _currentIndex = index; 
          _pageTabscontroller.animateToPage(_currentIndex, 
            duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
        });
      },
      fixedColor: Colors.black, //选择颜色
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('列表')),
        BottomNavigationBarItem(icon: Icon(Icons.comment), title: Text('组件')),
        BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text('其他'))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        // backgroundColor: Colors.grey[200],//相当body背景颜色
        appBar: AppBar(
          // backgroundColor: Colors.yellow[200], //顶部导航颜色
          title: Text('bookflutter'.toUpperCase()),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: MyDrawer(),
        ),
        body: PageView.builder(
          itemBuilder: (BuildContext context, int index){
            return _pageTabs[index];
          },
          controller: _pageTabscontroller,
          itemCount: _pageTabs.length,
          onPageChanged: (int index) {
          if (index == _currentIndex) return;
          setState(() {
            _currentIndex = index;
          });
        },
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
      onWillPop: _fetchPop,
    );
  }
}
