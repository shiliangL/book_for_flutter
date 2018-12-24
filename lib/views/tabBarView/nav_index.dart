import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyIndex extends StatefulWidget {
  _MyIndexState createState() => _MyIndexState();
}

class _MyIndexState extends State<MyIndex> {
  ScrollController _controller = new ScrollController();
  bool showToTopBtn = false; //是否显示“返回到顶部”按钮

  static const loadingTag = "##loading##"; //表尾标记
  var _dataList = <String>[loadingTag];

  @override
  void initState() {
    // TODO: implement initState
    // super.initState();

    _controller.addListener(() {
      print(_controller.offset); //打印滚动位置
      if (_controller.offset < 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });

    _fetchList();
  }

  @override
  void dispose() {
    //为了避免内存泄露，需要调用_controller.dispose
    _controller.dispose();
    super.dispose();
  }

  void _fetchList() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _dataList.insertAll(_dataList.length - 1,
          generateWordPairs().take(10).map((e) => e.asPascalCase).toList());
      setState(() {
        // _dataList;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _dataList.length,
      controller: _controller,
      itemBuilder: (context, index) {
        if (_dataList[index] == loadingTag) {
          if (_dataList.length - 1 < 100) {
            _fetchList();
            return Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: SizedBox(height: 24.0, child: Text('loading...')),
            );
          } else {
            return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "没有更多了",
                  style: TextStyle(color: Colors.grey),
                ));
          }
        }
        return ListTile(
            subtitle: Text(index.toString()), title: Text(_dataList[index]));
      },
    );
  }
}
