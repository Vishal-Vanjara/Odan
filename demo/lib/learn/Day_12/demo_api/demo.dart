
//This is for a single User(simple) "Techie Praveen"

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// String stringResponse = "";
// Map mapResponse;
// Map dataResponse;

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  // String? stringResponse;
  Map<String, dynamic>? dataResponse;
  Map? mapResponse;
  // Map? dataResponse;

  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users/2"));
    if (response.statusCode == 200) {
      setState(() {
        // stringResponse = response.body;
        mapResponse = json.decode(response.body) as Map<String, dynamic>;
        setState(() {
          dataResponse = mapResponse!['support'];
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
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          color: Colors.blue,
          child: Center(
            child: dataResponse == null
                ? Text("Data is loading...")
                : Text(dataResponse!['text'].toString()),
          ),
        ),
      ),
    );
  }
}
