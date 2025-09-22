import 'package:flutter/material.dart';

class ClipRReactWidget extends StatefulWidget {
  const ClipRReactWidget({super.key});

  @override
  State<ClipRReactWidget> createState() => _ClipRReactWidgetState();
}

class _ClipRReactWidgetState extends State<ClipRReactWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(60),bottomRight:Radius.circular(40)),
          child: Image.asset("asset/1.jpg"),
        ),
      ),
    );
  }
}
