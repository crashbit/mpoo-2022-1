import 'package:flutter/material.dart';
import 'package:lists_demo/ListsDemoPage.dart';
import 'package:lists_demo/Lists2Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: ListsDemoPage(),
      home: Lists2Page(),
    );
  }
}
