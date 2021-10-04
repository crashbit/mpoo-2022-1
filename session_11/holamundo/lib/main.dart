import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:holamundo/Home.dart';

void main() {
  print("Hola mundo dart");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
