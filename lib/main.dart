import 'package:cooklog_web/view/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cooklog',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
