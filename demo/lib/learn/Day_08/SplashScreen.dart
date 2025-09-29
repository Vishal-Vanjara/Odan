import 'dart:async';
import 'package:demo/learn/Day_08/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget{
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return Homepage();
      })
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellow.shade300,
        child: Text("Loading...", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        alignment: Alignment.center,
      ),
    );
  }
}