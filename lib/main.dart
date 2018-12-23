import 'package:flutter/material.dart';
import 'package:book_for_flutter/views/my_home.dart';
import 'package:book_for_flutter/views/sideViews/layout.dart';
import 'package:book_for_flutter/app_config.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(AppConfig.AppBarBg),
        highlightColor: Color.fromRGBO(255, 255, 255, 0.6),
        splashColor: Colors.white70,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHome(),
        '/layout': (BuildContext context) => LayOut(),
      },
    );
  }
}
