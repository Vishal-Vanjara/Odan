import 'package:flutter/material.dart';

class ListwheelAnimate extends StatefulWidget {
  const ListwheelAnimate({super.key});

  @override
  State<ListwheelAnimate> createState() => _ListwheelAnimateState();
}

class _ListwheelAnimateState extends State<ListwheelAnimate> {

  var arrIndex = {
    'Meet','Manav','Sai','Akshay','Hetvi','Mitali','Chahat','Neha',9,10,11,12
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListWheelScrollView(
            itemExtent:100,

            children: arrIndex.map(
                (value) =>  Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey,
                  ),

                  child: Center(child: Text('$value',style: TextStyle(fontSize: 23,))),
                ),
            ).toList(),

        ),
      ),
    );
  }
}
