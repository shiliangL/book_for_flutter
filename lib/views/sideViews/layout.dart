import 'package:flutter/material.dart';


class LayOut extends StatefulWidget {
  _LayOutState createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> {
  @override
  Widget build(BuildContext context) {
        return new Scaffold(
      appBar: AppBar(
        title: Text('layout', style: TextStyle(fontSize: 18.0, letterSpacing: 3.0)),
        actions: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.search),
          //   tooltip: 'Search',
          //   onPressed: () => Navigator.pushNamed(context, '/search'),
          // ),
        ],
      ),
    );
  }
}