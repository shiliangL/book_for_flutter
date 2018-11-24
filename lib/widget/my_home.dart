import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  static int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _buildBottomNavigationBar();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // 什么意思
  Future<bool> _fetchPop() {
    return Future.value(false);
  }

  _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (index) {
        if (index == _currentIndex) return;
        setState(() {
          _currentIndex = index; 
        });
      },
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('列表')),
        BottomNavigationBarItem(icon: Icon(Icons.comment), title: Text('组件')),
        BottomNavigationBarItem(icon: Icon(Icons.comment), title: Text('其他'))
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
          title: Text('首页'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Text('data'),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
      onWillPop: _fetchPop,
    );
  }
}
