import 'package:day_10/detail_page.dart';
import 'package:flutter/material.dart';

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
              child: Image.asset("asset/1.jpg",height: 100,width: 100,),
            ),
          ),
        ),
      ),
    );
  }
}
