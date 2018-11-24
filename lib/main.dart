import 'package:flutter/material.dart';
import 'package:book_for_flutter/widget/my_home.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.6),
        splashColor: Colors.white70,
      ),
      initialRoute: '/',
      routes: {
        '/':(BuildContext context)=> MyHome()
      },
    );
  }
}