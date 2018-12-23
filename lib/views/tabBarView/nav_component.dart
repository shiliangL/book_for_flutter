
import 'package:flutter/material.dart';

class MyComponent extends StatefulWidget {
  _MyComponentState createState() => _MyComponentState();
}

class _MyComponentState extends State<MyComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('组件'),
    );
  }
}