import 'package:demo/learn/Day_01/day1.dart';
import 'package:demo/learn/Day_02/day2.dart';
import 'package:demo/learn/Day_04/day4.dart';
import 'package:demo/learn/Day_05/day5.dart';
import 'package:demo/learn/Day_07/day7.dart';
import 'package:demo/learn/Day_08/SplashScreen.dart';
import 'package:demo/learn/Day_10/clip_r_react_widget.dart';
import 'package:demo/learn/Day_10/hero_animate.dart';
import 'package:flutter/material.dart';

import 'learn/Day_12/demo_api/demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Demo(),
    );
  }
}

