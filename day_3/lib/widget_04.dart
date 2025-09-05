// This is Alert Box

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert Dialog Box'),
          onPressed: () {
            showDialog(context: context,
                builder: (context) => AlertDialog(
                  actions: [
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: Text('Close'),
                    ),
                  ],
                  title: Text("Flutter App"),
                  contentPadding: EdgeInsets.all(20.0),
                  content: Text("This is the alert Dialog box"),
                )
            );
          },
        ),
      ),
    );
  }
}
