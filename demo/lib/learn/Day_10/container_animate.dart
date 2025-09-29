import 'package:flutter/material.dart';

class ContainerAnimate extends StatefulWidget {
  const ContainerAnimate({super.key});

  @override
  State<ContainerAnimate> createState() => _ContainerAnimateState();
}

class _ContainerAnimateState extends State<ContainerAnimate> {

  var _width = 200.0;
  var _height = 100.0;

  bool flag = true;

  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.greenAccent,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: (
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                      width : _width,
                      height: _height,
                      curve: Curves.bounceOut, // here i Add effect like bounce and many more
                      decoration: myDecor,
                      duration: Duration(seconds: 3)
                  ),

                  ElevatedButton(onPressed: (){
                    setState(() {
                      if(flag){
                        _width = 100.0;
                        _height = 200.0;
                        myDecor = BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepOrange,
                        );
                        flag = false;
                      }
                      else{
                        _width = 200.0;
                        _height = 100.0;
                        myDecor = BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.pinkAccent,

                        );
                        flag = true;
                      }

                    });
                  }, child: Text("Animated"))
                ],
              )
          ),
        ),
      );
  }
}
