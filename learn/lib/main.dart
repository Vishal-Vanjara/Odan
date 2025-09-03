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
          title: Text("Home Page",style:
          TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            wordSpacing: 3,
            fontSize: 24,
          ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/bg.jpeg"),
                fit: BoxFit.cover,
              )
            ),

            ),

            Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),

                Container(
                 child: Center(
                   child: Text("Box 1",style: TextStyle(fontSize: 24),),
                 ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image:AssetImage("asset/r1.jpeg"),
                      fit: BoxFit.cover
                    ),
                    color: Colors.green,
                  ),
                  height: 100,
                  width: 350,
                ),

                SizedBox(
                  height: 40,
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.orangeAccent,
                    image: DecorationImage(
                      image: AssetImage("asset/r2.jpeg"),
                      fit: BoxFit.cover,
                    )
                  ),
                  height: 100,
                  width: 350,
                ),

                SizedBox(
                  height: 40,
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage("asset/r3.jpeg"),
                      fit: BoxFit.cover
                    )
                  ),
                  height: 100,
                  width: 350,

                )
              ],
            )

          ),
          ],
        )
      ),
    );
  }
}

