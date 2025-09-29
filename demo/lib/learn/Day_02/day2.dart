import 'package:flutter/material.dart';

class Day2 extends StatefulWidget {
  const Day2({super.key});

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Real-State"),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("asset/bg2.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20,top: 100),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade500,
              ),
              height: 350,
              width: 220,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [

                    Row(
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.green,
                              image: DecorationImage(
                                image: AssetImage("asset/home1.jpeg"),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                      ],
                    ),

                    SizedBox( height: 10,),

                    Row(
                      children: [
                        Container(
                          // color: Colors.orange,
                            height: 20,
                            width: 200,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      // color: Colors.black26,
                                      child: Text("Home",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue.shade700,
                                        fontSize: 12,
                                        decoration: TextDecoration.underline,
                                      ),),

                                    )],
                                ),
                                SizedBox(
                                  width: 70,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: AssetImage("asset/star.jpg"),
                                          alignment: Alignment.centerRight,
                                        ),
                                      ),

                                      // color: Colors.purple,
                                      height: 20,
                                      width: 93,
                                    )
                                  ],
                                ),
                              ],
                            )
                        )
                      ],
                    ),

                    SizedBox( height: 10,),

                    Row(
                      children: [
                        Container(
                          child: Text("Woodland Home",style:
                          TextStyle( fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          ),
                          // color: Colors.black54,
                          // height: 20,
                          // width: 20,
                        )
                      ],
                    ),

                    // SizedBox( height: 10,),

                    Row(
                      children: [
                        Container(
                          // color: Colors.deepPurpleAccent,
                          child: Text("5000/month"),
                          // height: 20,
                          // width: 20,
                        )
                      ],
                    ),

                    // SizedBox( height: 10,),

                    Row(
                      children: [
                        Container(
                          // height: 40,
                          // width: 20,
                          child: Icon(
                            Icons.location_on,
                            color: Colors.blue.shade100,
                          ),
                          // color: Colors.yellowAccent,
                        ),
                        Text("Mota Varacha, Surat"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
