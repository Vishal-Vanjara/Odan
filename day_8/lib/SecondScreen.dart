import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {

  //Passing data Whole process done through 6 step 3, for sending data and next 3 step for receving data//

  final String name; // Step 1: Declare Variable
  final String field;
  final String email;


  //Step 2 :Help to receive data from other class
  const Secondscreen({Key? key, required this.name, required this.field, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Secondscreen"),

      ),
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              child: Text("Welcome ${name}",), //Step 3 : To display
              alignment: Alignment.center,
              color: Colors.orangeAccent,
            ),

            Container(
              child: Text("Your Department was ${field}",),
              alignment: Alignment.center,
              color: Colors.orangeAccent,
            ),

            Container(
              child: Text("Your Email was ${email}",),
              alignment: Alignment.center,
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
