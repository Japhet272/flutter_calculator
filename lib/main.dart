
import 'package:flutter/material.dart';
import 'package:brains/calculator_main.dart';

import 'casio_calculator.dart';


void main(){
  runApp(MaterialApp(
    title: "calculatorMain",
    theme:ThemeData(
      primarySwatch:Colors.deepOrange,
    ),
    home:  casioCalculator(),
    debugShowCheckedModeBanner: false,
  ));
}


class Calculator1 extends StatefulWidget {
  const Calculator1({Key? key}) : super(key: key);

  @override
  State<Calculator1> createState() {
    return _Calculator1State();
  }
}

class _Calculator1State extends State<Calculator1> {
  int sum = 0;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculating Device")),
      body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextFormField(
                      controller: controller1,
                      decoration: InputDecoration(
                          labelText: "enter A value",
                          labelStyle: TextStyle(fontSize: 15)),
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    width: 100,
                    child: TextFormField(
                      controller: controller2,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "enter  B value",
                          labelStyle: TextStyle(fontSize: 15)),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextFormField(
                      controller: controller3,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "enter  C value",
                          labelStyle: TextStyle(fontSize: 15)),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Ans = $sum"),
              ),
              SizedBox( //this refers to a height to specify the padding(another method of padding)
                height: 15,
              ),
              //our button
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ElevatedButton(
                    onPressed:(){
                      int a =int.parse(controller1.text);
                      int b =int.parse(controller2.text);
                      int c =int.parse(controller3.text);
                      debugPrint('my value =$a');
                      setState(
                            () {sum= a+b+c;},
                      );
                      debugPrint('yes we clicked it$sum');
                    },
                    child: Text("Calculate")),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ElevatedButton(
                    onPressed:(){
                      int a =int.parse(controller1.text);
                      int b =int.parse(controller2.text);
                      int c =int.parse(controller3.text);
                      debugPrint('my value =$a');
                      setState(
                            () {sum= a*b*c;},
                      );
                      debugPrint('yes we clicked it$sum');
                    },
                    child: Text("multiply")),
              ),
            ]
            ,
          )
      )
      ,
    );
  }}
