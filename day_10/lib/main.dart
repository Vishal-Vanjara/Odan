import 'package:day_10/container_animate.dart';
import 'package:day_10/crossfade_animate.dart';
import 'package:day_10/detail_page.dart';
import 'package:day_10/hero_animate.dart';
import 'package:day_10/opacity_animate.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HeroAnimate(),
    );
  }
}


