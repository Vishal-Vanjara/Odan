
//This is for a List of user. "Techie Praveen"

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Demo2 extends StatefulWidget {
  const Demo2({super.key});

  @override
  State<Demo2> createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {

  Map<String, dynamic>? dataResponse;
  Map? mapResponse;
  // Map? dataResponse;
  List? listResponse;

  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    if (response.statusCode == 200) {
      setState(() {
        // stringResponse = response.body;
        mapResponse = json.decode(response.body) as Map<String, dynamic>;
        setState(() {
          listResponse = mapResponse!['data'];
        });

      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: listResponse!.length,
          itemBuilder: (context,index){
            return Container(
              child: Column(
                children: [
                  Image.network(listResponse![index]['avatar'].toString()),
                  Text(listResponse![index]['first_name'].toString()),
                  Text(listResponse![index]['email'].toString()),
                ],
              )
            );
          }),

            // this way i used to called single in a list view.
            // child: listResponse == null
            //     ? Text("Data is loading...")
            //     : Text(listResponse![4]['email'].toString()),

    );
  }
}
