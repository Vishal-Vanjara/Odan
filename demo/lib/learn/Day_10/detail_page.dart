import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(

        // Here I learn Gradient (Linear, Radial)............--->

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [

              // For more combination check website "Web gradient"
              //ff(Visible),00(invisible) => by changing this value after 0x i can manage opacity.

              Color(0xff84fab0),
              Color(0xff8fd3f4),
            ],
            begin: FractionalOffset(0.0,0.1),
            end: FractionalOffset(0.1,1.1),
            // stops: [0.2,1.0]   // This is used when we have set area in multiple color.

          )
        ),
        child: Center(
          child: Hero(
            tag: 'Background',
            child: Image.asset("asset/day10bg.jpg",height: 600,width:600 ,),
          ),
        ),
      ),

    );
  }
}
