import 'package:flutter/material.dart';

class CrossfadeAnimate extends StatefulWidget {
  const CrossfadeAnimate({super.key});

  @override
  State<CrossfadeAnimate> createState() => _CrossfadeAnimateState();
}

class _CrossfadeAnimateState extends State<CrossfadeAnimate> {

  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              _showFirst = !_showFirst;
            });
          },
          child: AnimatedCrossFade(
            duration: Duration(seconds: 2),
            firstChild: Container(
              width: 200,
              height: 200,
              color: Colors.orangeAccent,
            ),
            secondChild: Container(
              width: 200,
              height: 200,
              color: Colors.pinkAccent,
            ),
            crossFadeState:
              _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
        ),
      )
    );
  }
}
