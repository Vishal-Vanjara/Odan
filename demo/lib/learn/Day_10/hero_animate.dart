import 'package:flutter/material.dart';
import 'detail_page.dart';

class HeroAnimate extends StatefulWidget {
  const HeroAnimate({super.key});

  @override
  State<HeroAnimate> createState() => _HeroAnimateState();
}

class _HeroAnimateState extends State<HeroAnimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
            },
            child: Hero(
              tag: 'Background',
              child: Image.asset("asset/1.jpeg",height: 100,width: 100,),
            ),
          ),
        ),
      ),
    );
  }
}
