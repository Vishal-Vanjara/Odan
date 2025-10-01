import 'package:day_12/demo_api/demo.dart';
import 'package:day_12/demo_api/demo_2.dart';
import 'package:day_12/news_api_example/news_app.dart';
import 'package:day_12/sport_api_example/sport_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Demo2(),
    );
  }
}

