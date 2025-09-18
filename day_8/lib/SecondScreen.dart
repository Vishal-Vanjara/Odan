import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {

  final String name;

  const Secondscreen({Key? key, required this.name}) : super(key: key);

  // Secondscreen(this.name);

  // Secondscreen(this.nameFromHome);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Secondscreen"),

      ),
      body: Container(
        child: Text("Welcome ${name}",),
        alignment: Alignment.center,
        color: Colors.orangeAccent,
      ),
    );
  }
}
