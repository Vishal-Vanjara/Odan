import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              // here try Expanded Widget
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 120,
                      width: 20,
                      color: Colors.red,
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 120,
                      width: 20,
                      color: Colors.blue,
                    ),
                  ),

                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 120,
                      width: 20,
                      color: Colors.purple,
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height:   120,
                      width: 20,
                      color: Colors.green,
                    ),
                  ),

                ],
              ),

              // here try Button Widget
              TextButton(
                child: Text("Click here!!"),
                onPressed: (){
                  print("button pressed");
                },
                onLongPress: (){
                  print("Long press");
                },
              ),

              ElevatedButton(
                child: Text("Press it"),
                onPressed: (){
                  print("Elevation button pressed");
                },
                onLongPress: (){
                  print("Elevation button long press");
                },
              ),

              OutlinedButton(
                child: Text("Wanna see Magic"),
                onPressed: (){
                  print("Outlined button pressed");
                },
              ),

              //here try InkWell Widget and in that apply container decoration.
              InkWell(
                onTap: (){
                  print("it's tap on container");
                },
                onLongPress: (){
                  print("it's Long press on container");
                },
                onDoubleTap: (){
                  print("it's double tap on container");
                },

                // here apply Box decoration
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    // borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 5
                    ),
                    boxShadow: [ BoxShadow(
                      blurRadius: 41,
                      spreadRadius: 8,
                      color: Colors.black54,
                    )
                    ],
                    shape: BoxShape.circle,
                  ),
                  width: 200,
                  height: 200,
                  child: Center(
                    child:  InkWell(
                      onTap: (){
                        print("Now it tap on text");
                      },
                      child: Text("Click here",style: TextStyle(fontSize: 23),
                      ),
                    ),
                  ),

                ),
              ),

              SizedBox(height: 20,),

              //Here try Card Widget
              Card(
                shadowColor: Colors.red,
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Card Widget"),
                ),
              ),

              // Here try CircleAvatar
              Container(
                // height: 120,
                // width: 120,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage:AssetImage("assets/profile.jpeg"),
                    child: Text("Circle Avatar",style: TextStyle(color: Colors.white),),
                  ),
                ),
              )

            ],
          ),

        ),
      ),
    );
  }
}

