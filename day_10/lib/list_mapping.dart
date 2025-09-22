import 'package:flutter/material.dart';

class ListMapping extends StatefulWidget {
  const ListMapping({super.key});

  @override
  State<ListMapping> createState() => _ListMappingState();
}

class _ListMappingState extends State<ListMapping> {

  var arrData = [

    {
      'name' : 'Vishal',
      'mobno' : '9873668382',
      'unread' : '2'
    },

    {
      'name' : 'Meet',
      'mobno' : '378928382',
      'unread' : '1'
    },

    {
      'name' : 'Hetvi',
      'mobno' : '9876322382',
      'unread' : '20'
    },

    {
      'name' : 'Akshay',
      'mobno' : '7358268382',
      'unread' : '8'
    },

    {
      'name' : 'Mehul',
      'mobno' : '378928382',
      'unread' : '4'
    },

    {
      'name' : 'Neha',
      'mobno' : '98322382',
      'unread' : '9'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListWheelScrollView(
          itemExtent:100,

          children: arrData.map(
                (value) =>  Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade200,
                    ),
                    child: ListTile(
                      leading: Icon(Icons.account_circle,size: 50,),
                      title: Text(value['name'].toString()),
                      subtitle: Text(value['mobno'].toString()),
                      trailing: CircleAvatar(
                        child: Text(value['unread'].toString(),
                      ),
                        radius: 15,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                ),
          ).toList(),

        ),
      ),
    );
  }
}
