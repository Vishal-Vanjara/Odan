import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {

    var time = DateTime.now();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade500,
          title: Text("Simple Calculator"),
        ),
        body: Container(
          color: Colors.blue.shade200,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Number 1",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Number 2",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
      
                      var sum = no1 + no2;
      
                      result = "The Addition of $no1 and $no2 is $sum";
      
                      setState(() {
                      });
                    }, child: Text("Add"),),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var sub = no1 - no2;
                      result ="The Subtraction of $no1 and $no2 is $sub";
                      setState(() {
                      });
                    }, child: Text("Sub")),
                    ElevatedButton(onPressed: (){
                      var num1 = int.parse(no1Controller.text.toString());
                      var num2 = int.parse(no2Controller.text.toString());
                      var mul = num1 * num2;
                      result = "The Multiplication of $num1 and $num2 is $mul";
                      setState(() {
                      });
                    }, child: Text("Mul")),
                    ElevatedButton(onPressed: (){
                      var num1 = int.parse(no1Controller.text.toString());
                      var num2 = int.parse(no2Controller.text.toString());
                      var div = num1 / num2;
                      result ="The Division of $num1 and $num2 is $div";
                      setState(() {
                      });
                    }, child: Text("Div")),
                  ],
                ),
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(result,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                
                // Showing date and time
                Text('Current Date : ${time}'),
                ElevatedButton(onPressed: (){
                  setState(() {
                  });
                }, child: Text("Refresh It")),

                //Showing date and time in perticular format using intl library

                Text("Current Date : ${DateFormat('jms').format(time)}"),

                SizedBox(height: 10,),


                Text('Select date'),
                ElevatedButton(onPressed: () async {
                  DateTime? datePicked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2030));

                  if (datePicked != null) {
                    setState(() {
                      pickedDate = datePicked;
                    });
                  }
                }, child: Text("Show"))
              ],
            ),

          ),
        ),

      ),
    );
  }
}
