// import 'dart:ffi';

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
                  Expanded(             // Used to fill the available space
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
              ),


              //day 6 work Start from here----->


              // Work on Richtext Widget
              RichText(
                  text: TextSpan(
                    style: (
                    TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                    )
                    ),
                    children: [
                      TextSpan(text: 'Hello this is a '),
                      TextSpan(text: "Richtext Widget" ,style: TextStyle(fontSize: 26,color: Colors.orange,fontWeight: FontWeight.bold )),
                    ],
                  ),
              ),

              SizedBox(height: 20,),

              // Work on Stack Widget in that used positioned Widget
              Container(
                height: 300,
                width: 300,
                child: Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.greenAccent,
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Positioned(
                      top:40,
                      left: 40,
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ],
                ),
              ),

              //Work on wrap Widget
              Wrap(
                direction: Axis.horizontal,
                spacing: 20,
                runSpacing: 20,
                // alignment: WrapAlignment.spaceAround,
                children:[
                  Container(
                  height: 50,
                  width: 150,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.blueGrey,
                ),
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.yellow,
                ),
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.orangeAccent,
                ),
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.purpleAccent,
                ),
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.pinkAccent,
                ),
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.purple,
                ),
                ],
              ),

              SizedBox(height: 20,),

              // Work on Textfield Widget
              Container(
                height: 200,
                  width: 300,
                  child: Column(
                    children: [
                      TextField(
                        // enabled: false,
                        decoration: InputDecoration(
                          hintText: "Password",
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Colors.blue,
                                width: 3,
                              ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.red,
                            )
                          ),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              )
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            // borderSide: BorderSide(
                            //   color: Colors.blue
                            // ),
                          ),
                          // suffixText: "Invalid password!!",
                          suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye),
                          onPressed: () {},),
                          prefixIcon: Icon(Icons.verified_user),
                        ),
                        obscureText: true,
                      ),

                      SizedBox(height: 20,),

                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                    ],
                  ),
              )

            ],
          ),

        ),

        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          onPressed: (){},
        ),

        // bottomNavigationBar: BottomNavigationBar(
        //   // type: BottomNavigationBarType.fixed,
        //   currentIndex: 2,
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User')
        //   ],
        // ),
      ),
    );
  }
}

