import 'package:flutter/material.dart';
// import 'widget_01.dart';
// import 'widget_02.dart';
// import 'widget_03.dart';
// import 'widget_04.dart';
import 'widget_05.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

