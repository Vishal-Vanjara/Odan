import 'package:flutter/material.dart';

class OpacityAnimate extends StatefulWidget {
  const OpacityAnimate({super.key});

  @override
  State<OpacityAnimate> createState() => _OpacityAnimateState();
}

class _OpacityAnimateState extends State<OpacityAnimate> {

  var myOpacity = 1.0;

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              curve: Curves.linear,
              duration: Duration(seconds: 2),
              child:  Container(
                color: Colors.greenAccent,
                width: 200,
                height: 200,
              ),
            ),

            ElevatedButton(onPressed: (){
              setState(() {
                if(flag) {
                  myOpacity = 0.0;
                  flag = false;
                }else{
                  myOpacity =1.0;
                  flag = true;
                }
              });

            }, child: Text("Animate"))
          ],
        ),
      ),
    );
  }
}
