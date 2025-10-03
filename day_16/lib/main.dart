
import 'package:day_16/Demo_2/hive_db.dart';
import 'package:day_16/Demo_3/ui_page.dart';
import 'package:flutter/material.dart';
// <-- your helper class file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sqflite Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: UiPage(),
    );
  }
}
