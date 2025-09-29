import 'package:flutter/material.dart';
import 'package:demo/learn/Day_08/SecondScreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  RangeValues values = RangeValues(0,100);

  TextEditingController _name = new TextEditingController(); //Step 4: Create a constructor here first
  TextEditingController _field = new TextEditingController();
  TextEditingController _email = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

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

            // ElevatedButton(onPressed: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context) => Secondscreen( name: _name.text="Empty",)));
            // }, child: Text("Next")),

            Container(
              width: 200,
              child: TextField(
                controller: _name, //Step 5 : from here it take input
              ),
            ),


            Container(
              width: 200,
              child: TextField(
                controller: _field,
              ),
            ),


            Container(
              width: 200,
              child: TextField(
                controller: _email,
              ),
            ),

            //Step 6 : Pass value through this button
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                    MaterialPageRoute(builder: (contex)=> Secondscreen( name: _name.text, field: _field.text, email: _email.text,)));
            }, child: Text("Send data")),

            //Here use of slider widget

            RangeSlider(
                values: values,
                divisions: 10,
                labels: labels,
                min: 0,
                max: 100,
                onChanged: (newValue){
                  values = newValue;
                  setState(() {

                  });

                },
            ),
          ],
        ),
      )
    );
  }
}
