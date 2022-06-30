import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calculatorMain extends StatefulWidget {
  const calculatorMain({Key? key}) : super(key: key);

  @override
  State<calculatorMain> createState() => _calculatorMainState();
}

class _calculatorMainState extends State<calculatorMain> {
  String value_t = "";
  var _character_operator = "";
  double _first_value = 0;
  double _second_value = 0;

  String calculate(
      {required double first_value,
      required double second_value,
      required var character_operator}) {
    String value = "";
    switch (character_operator) {
      case "+":
        return value = "${first_value + second_value}";
      case "-":
        return value = "${first_value - second_value}";
      case "*":
        return value = "${first_value * second_value}";
      case "/":
        return value = "${first_value / second_value}";
      case "%":
        return value = "${first_value % second_value}";
    }

    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text("Calculator"),

          centerTitle: true,
          actions: [
          SizedBox(
          height: 30,
        width: 50,
        child: TextButton(onPressed: () {
         setState(() {
           value_t="";
         });
        }, child: Text("CLS",style: TextStyle (color:Colors.white),)),
    )
          ],
        ),
        body: Container(
            color: Colors.white,
            child: Center(
                child: Column(
              children: [
                Display(value: value_t),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: SizedBox(
                    width: 400,
                    height: MediaQuery.of(context).size.height - 300,
                    child: Material(
                        color: Colors.white,
                        elevation: 5,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        shadowColor: Colors.deepOrange,
                        type: MaterialType.canvas,
                        child: SizedBox(
                          width: 400,
                          height: 450,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // TextButton.icon(onPressed: () {},
                                    //   icon: Icon(Icons.eighteen_mp)
                                    //   label: Text("jesus is lord"),
                                    // ),

                                    SizedBox(
                                      height: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            shadowColor:
                                                MaterialStateProperty.all(
                                                    Colors.deepOrange)),
                                        child: Text(
                                          "9",
                                          style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontSize: 30),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            value_t = value_t + "9";
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            shadowColor:
                                                MaterialStateProperty.all(
                                                    Colors.deepOrange)),
                                        child: Text(
                                          "8",
                                          style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontSize: 30),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            value_t = value_t + "8";
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            shadowColor:
                                                MaterialStateProperty.all(
                                                    Colors.deepOrange)),
                                        child: Text(
                                          "7",
                                          style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontSize: 30),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            value_t = value_t + "7";
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            shadowColor:
                                                MaterialStateProperty.all(
                                                    Colors.deepOrange)),
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30),
                                        ),
                                        onPressed: () {
                                          if (!value_t.isEmpty) {
                                            //  after we check that the value_t is not empty then we  store our value in a variable first value
                                            setState(() {
                                              _first_value =
                                                  double.parse(value_t);
                                              value_t = "";
                                              _character_operator = "+";
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    // child: ElevatedButton.icon(onPressed: () {
                                    //
                                    // }, icon: Icon(Icons.print), label: Text("Print")),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // TextButton.icon(onPressed: () {},
                                      //   icon: Icon(Icons.eighteen_mp)
                                      //   label: Text("jesus is lord"),
                                      // ),

                                      SizedBox(
                                        height: 100,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white),
                                              shadowColor:
                                                  MaterialStateProperty.all(
                                                      Colors.deepOrange)),
                                          child: Text(
                                            "6",
                                            style: TextStyle(
                                                color: Colors.deepOrange,
                                                fontSize: 30),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              value_t = value_t + "6";
                                            });
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white),
                                              shadowColor:
                                                  MaterialStateProperty.all(
                                                      Colors.deepOrange)),
                                          child: Text(
                                            "5",
                                            style: TextStyle(
                                                color: Colors.deepOrange,
                                                fontSize: 30),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              value_t = value_t + "5";
                                            });
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white),
                                              shadowColor:
                                                  MaterialStateProperty.all(
                                                      Colors.deepOrange)),
                                          child: Text(
                                            "4",
                                            style: TextStyle(
                                                color: Colors.deepOrange,
                                                fontSize: 30),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              value_t = value_t + "4";
                                            });
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white),
                                              shadowColor:
                                                  MaterialStateProperty.all(
                                                      Colors.deepOrange)),
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 30),
                                          ),
                                          onPressed: () {
                                            if (!value_t.isEmpty) {
                                              //  after we check that the value_t is not empty then we  store our value in a variable first value
                                              setState(
                                                () {
                                                  _first_value =
                                                      double.parse(value_t);
                                                  value_t = "";
                                                  _character_operator = "-";
                                                },
                                              );
                                            }
                                          },
                                        ),
                                        // child: ElevatedButton.icon(onPressed: () {
                                        //
                                        // }, icon: Icon(Icons.print), label: Text("Print")),
                                      ),
                                    ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            shadowColor:
                                                MaterialStateProperty.all(
                                                    Colors.deepOrange)),
                                        child: Text(
                                          "3",
                                          style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontSize: 30),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            value_t = value_t + "3";
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            shadowColor:
                                                MaterialStateProperty.all(
                                                    Colors.deepOrange)),
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontSize: 30),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            value_t = value_t + "2";
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            shadowColor:
                                                MaterialStateProperty.all(
                                                    Colors.deepOrange)),
                                        child: Text(
                                          "1",
                                          style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontSize: 30),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            value_t = value_t + "1";
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            shadowColor:
                                                MaterialStateProperty.all(
                                                    Colors.deepOrange)),
                                        child: Text(
                                          "CLR",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            value_t = value_t.substring(
                                                0, value_t.length - 1);
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 100,
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.white),
                                                shadowColor:
                                                    MaterialStateProperty.all(
                                                        Colors.deepOrange)),
                                            child: Text(
                                              "0",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 30),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                value_t = value_t + "0";
                                              });
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          height: 100,
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.white),
                                                shadowColor:
                                                    MaterialStateProperty.all(
                                                        Colors.deepOrange)),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Text(
                                                    "%",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Text(
                                                    "*",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 30),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            onPressed: () {
                                              if (!value_t.isEmpty) {
                                                //  after we check that the value_t is not empty then we  store our value in a variable first value
                                                setState(() {
                                                  _first_value =
                                                      double.parse(value_t);
                                                  value_t = "";
                                                  _character_operator = "*";
                                                });
                                              }
                                            },
                                            onLongPress: () {
                                              if (!value_t.isEmpty) {
                                                //  after we check that the value_t is not empty then we  store our value in a variable first value
                                                setState(() {
                                                  _first_value =
                                                      double.parse(value_t);
                                                  value_t = "";
                                                  _character_operator = "%";
                                                });
                                              }
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          height: 100,
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.white),
                                                shadowColor:
                                                    MaterialStateProperty.all(
                                                        Colors.deepOrange)),
                                            child: Text(
                                              "/",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 30),
                                            ),
                                            onPressed: () {
                                              if (!value_t.isEmpty) {
                                                //  after we check that the value_t is not empty then we  store our value in a variable first value
                                                setState(() {
                                                  _first_value =
                                                      double.parse(value_t);
                                                  value_t = "";
                                                  _character_operator = "/";
                                                });
                                              }
                                            },
                                          ),
                                        ),
                                        SizedBox(
                                          height: 100,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.white),
                                                  shadowColor:
                                                      MaterialStateProperty.all(
                                                          Colors.deepOrange)),
                                              child: Text(
                                                "=",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 30),
                                              ),
                                              onPressed: () {
                                                if (_first_value != null &&
                                                    value_t.isNotEmpty) {
                                                  setState(() {
                                                    _second_value =
                                                        double.parse(value_t);
                                                    value_t = calculate(
                                                        first_value:
                                                            _first_value,
                                                        second_value:
                                                            _second_value,
                                                        character_operator:
                                                            _character_operator);
                                                    _first_value = 0;
                                                    _second_value = 0;
                                                  });
                                                }
                                              }),
                                        ),
                                      ])),
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            ))));
  }
}

class Display extends StatelessWidget {
  const Display({Key? key, required this.value}) : super(key: key);
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(6),
      // color: Colors.white30,
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Text(
        value,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white30,
          border: Border.all(
              width: 5, color: Colors.deepOrange, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                offset: Offset.fromDirection(0.0, 5),
                blurRadius: 4.0,
                blurStyle: BlurStyle.inner),
            BoxShadow(
                color: Colors.white,
                offset: Offset.fromDirection(-200),
                blurStyle: BlurStyle.inner),
            BoxShadow(
                color: Colors.white,
                offset: Offset.fromDirection(-200),
                blurStyle: BlurStyle.inner)
          ]),
    );
  }
}
