import 'package:day_8/SecondScreen.dart';
import 'package:flutter/material.dart';
import 'package:day_8/SecondScreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  TextEditingController _name = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage",),backgroundColor: Colors.green.shade300,
      ),
      body: Center(
        child: Column
          (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text("Redirect to next page"),

            SizedBox(height: 20,),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Secondscreen( name: _name.text="Empty",)));
            }, child: Text("Next")),

            Container(
              width: 200,
              child: TextField(
                controller: _name,
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (contex)=> Secondscreen( name: _name.text)));
            }, child: Text("Send data"))

          ],
        ),
      )
    );
  }
}
