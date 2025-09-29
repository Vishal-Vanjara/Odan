import 'package:day_16/notepage.dart';
import 'package:flutter/material.dart';
import 'db_helper.dart'; // <-- your helper class file

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
      home: NotesPage(),
    );
  }
}
