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
        child: Center(
          child: Hero(
            tag: 'Background',
            child: Image.asset("asset/1.jpg",height: 600,width:600 ,),
          ),
        ),
      ),

    );
  }
}
