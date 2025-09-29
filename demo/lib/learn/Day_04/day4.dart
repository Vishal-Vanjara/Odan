import 'package:flutter/material.dart';

class Day4 extends StatefulWidget {
  const Day4({super.key});

  @override
  State<Day4> createState() => _Day4State();
}

class _Day4State extends State<Day4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("HomePage"),
      //   // backgroundColor: Colors.red,
      // ),
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/bg3.jpeg"),
                    fit: BoxFit.cover,
                  )
              )
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 104.0),
                  child: Row(
                    children: [
                      Text("Hello Vishal" , style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                ),

                Row(
                  children: [
                    Icon(Icons.location_on,
                      color: Colors.black,),
                    Text("Surat,India")
                  ],
                ),

                SizedBox(height: 30,),


                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 500,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage("asset/5.jpeg"),
                                fit: BoxFit.cover,
                                opacity: 0.7
                            )
                        ),
                        child:Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40,left: 80),
                              child: Row(
                                children: [
                                  Text("Luxary Home",style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black54,
                                        blurRadius: 5.0,
                                        offset: Offset(4.0, 4.0),
                                      ),
                                      // ),
                                    ],
                                  ),)
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 258.0,left: 5),
                              child: Row(
                                children: [
                                  Text("Sandfold Springs",
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black54,
                                          blurRadius: 5.0,
                                          offset: Offset(4.0, 4.0),
                                        ),
                                        // ),
                                      ],
                                    ),)
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text("It unique marble and design make it \nmost attractive at time of time.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black54,
                                          blurRadius: 5.0,
                                          offset: Offset(4.0, 4.0),
                                        ),
                                        // ),
                                      ],
                                    ),)
                                ],
                              ),
                            )
                          ],
                        ),
                        // color: Colors.green,
                      ),

                      SizedBox(width: 10,),

                      Container(
                        height: 500,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage("asset/2.jpeg"),
                                fit: BoxFit.cover,
                                opacity: 0.7
                            )
                        ),
                        child:Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40,left: 80),
                              child: Row(
                                children: [
                                  Text("Luxary Home",style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black54,
                                        blurRadius: 5.0,
                                        offset: Offset(4.0, 4.0),
                                      ),
                                      // ),
                                    ],
                                  ),)
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 258.0,left: 5),
                              child: Row(
                                children: [
                                  Text("Sandfold Springs",
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black54,
                                          blurRadius: 5.0,
                                          offset: Offset(4.0, 4.0),
                                        ),
                                        // ),
                                      ],
                                    ),)
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text("It unique marble and design make it \nmost attractive at time of time.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black54,
                                          blurRadius: 5.0,
                                          offset: Offset(4.0, 4.0),
                                        ),
                                        // ),
                                      ],
                                    ),)
                                ],
                              ),
                            )
                          ],
                        ),
                        // color: Colors.green,
                      ),

                      SizedBox(width: 10,),

                      Container(
                        height: 500,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage("asset/4.jpeg"),
                                fit: BoxFit.cover,
                                opacity: 0.7
                            )
                        ),
                        child:Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40,left: 80),
                              child: Row(
                                children: [
                                  Text("Luxary Home",style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black54,
                                        blurRadius: 5.0,
                                        offset: Offset(4.0, 4.0),
                                      ),
                                      // ),
                                    ],
                                  ),)
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 258.0,left: 5),
                              child: Row(
                                children: [
                                  Text("Sandfold Springs",
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black54,
                                          blurRadius: 5.0,
                                          offset: Offset(4.0, 4.0),
                                        ),
                                        // ),
                                      ],
                                    ),)
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text("It unique marble and design make it \nmost attractive at time of time.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black54,
                                          blurRadius: 5.0,
                                          offset: Offset(4.0, 4.0),
                                        ),
                                        // ),
                                      ],
                                    ),)
                                ],
                              ),
                            )
                          ],
                        ),
                        // color: Colors.green,
                      ),

                      SizedBox(width: 10,),

                      Container(
                        height: 500,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage("asset/3.jpeg"),
                                fit: BoxFit.cover,
                                opacity: 0.7
                            )
                        ),
                        child:Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40,left: 80),
                              child: Row(
                                children: [
                                  Text("Luxary Home",style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black54,
                                        blurRadius: 5.0,
                                        offset: Offset(4.0, 4.0),
                                      ),
                                      // ),
                                    ],
                                  ),)
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 258.0,left: 5),
                              child: Row(
                                children: [
                                  Text("Sandfold Springs",
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black54,
                                          blurRadius: 5.0,
                                          offset: Offset(4.0, 4.0),
                                        ),
                                        // ),
                                      ],
                                    ),)
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: [
                                  Text("It unique marble and design make it \nmost attractive at time of time.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black54,
                                          blurRadius: 5.0,
                                          offset: Offset(4.0, 4.0),
                                        ),
                                        // ),
                                      ],
                                    ),)
                                ],
                              ),
                            )
                          ],
                        ),
                        // color: Colors.green,
                      ),

                    ],
                  ),
                ),
              ],

            ),
          ),
        ],
      ),
    );
  }
}
