import 'package:flutter/material.dart';

class casioCalculator extends StatefulWidget {
  const casioCalculator({Key? key}) : super(key: key);

  @override
  State<casioCalculator> createState() => _casioCalculatorState();
}

class _casioCalculatorState extends State<casioCalculator> {
  String value_p = "";
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
        value = "${first_value + second_value}";
        print("my value is$value");
        return value ;
      case "-":
        return value = "${first_value - second_value}";
      case "/":
        value = "${first_value / second_value}";
        print("my value is$value");
        return value ;
      case "*":
        return value = "${first_value * second_value}";
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
            Text("Casio"),

            centerTitle: true,
            actions: [
          SizedBox(
            height: 30,
            width: 50,
            child: TextButton(onPressed: () {
              setState(() {
                value_p = "";
              });
            },
                child: Text("AC",style: TextStyle(color: Colors.white),)),
          )
        ],
        ),
        body: Container(
            color: Colors.white,
            child: Center(
                child: Column(children: [
                  Display(value: value_p),
                  Padding(
                      padding: EdgeInsets.all(30),
                      child: SizedBox(
                          width: 400,
                          height: MediaQuery.of(context).size.height - 300,
                          child: Material(
                              color: Colors.black38,
                              elevation: 10,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              shadowColor: Colors.white,
                              type: MaterialType.canvas,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [

                                              SizedBox(
                                                  height: 70,
                                                  child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                        MaterialStateProperty.all(
                                                            Colors.white),
                                                        shadowColor:
                                                        MaterialStateProperty.all(
                                                            Colors.white)),
                                                    child: Text(
                                                      "9",
                                                      style: TextStyle(
                                                          color: Colors.deepOrange,
                                                          fontSize: 30),
                                                    ),
                                                    onPressed: () {
                                                      setState(() {
                                                        value_p = value_p + "9";
                                                      });
                                                    },
                                                  ),
                                              ),
                                              SizedBox(
                                                  height: 70,
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
                                                        value_p = value_p + "8";
                                                      });
                                                    },
                                                  ),
                                              ),
                                              SizedBox(
                                                  height: 70,
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
                                                        value_p = value_p + "7";
                                                      });
                                                    },
                                                  ),
                                              ),
                                              SizedBox(
                                                  height: 70,
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
                                                      if (!value_p.isEmpty) {
                                                        //  after we check that the value_t is not empty then we  store our value in a variable first value
                                                        setState(() {
                                                            _first_value =
                                                                double.parse(value_p);
                                                            value_p = "";
                                                            _character_operator = "+";
                                                          });
                                                      }
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
                                                  height: 70,
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
                                                        value_p = value_p + "6";
                                                      });
                                                    },
                                                  ),
                                              ),
                                              SizedBox(
                                                  height: 70,
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
                                                        value_p = value_p + "5";
                                                      });
                                                    },
                                                  ),
                                              ),
                                              SizedBox(
                                                  height: 70,
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
                                                        value_p = value_p + "4";
                                                      });
                                                    },
                                                  ),
                                              ),
                                              SizedBox(
                                                  height: 70,
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
                                                      if (!value_p.isEmpty) {
                                                          //  after we check that the value_t is not empty then we  store our value in a variable first value
                                                          setState(
                                                                () {
                                                              _first_value =
                                                                  double.parse(value_p);
                                                              value_p = "";
                                                              _character_operator = "-";
                                                            },
                                                          );
                                                        }
                                                      },
                                                  ),
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
                                                  height: 70,
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
                                                        value_p = value_p + "3";
                                                      });
                                                    },
                                                  ),
                                              ),
                                              SizedBox(
                                                  height: 70,
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
                                                        value_p = value_p + "2";
                                                      });
                                                    },
                                                  ),
                                              ),
                                              SizedBox(
                                                  height: 70,
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
                                                        value_p = value_p + "1";
                                                      });
                                                    },
                                                  ),
                                              ),
                                              SizedBox(
                                                  height: 70,
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
                                                      if (!value_p.isEmpty) {
                                                        //  after we check that the value_t is not empty then we  store our value in a variable first value
                                                        setState(() {
                                                          _first_value =
                                                              double.parse(value_p);
                                                          value_p = "";
                                                          _character_operator = "/";
                                                        },
                                                        );
                                                      }
                                                    },
                                                  ),
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
                                                  height: 70,
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
                                                            color: Colors.deepOrange,
                                                            fontSize: 30),
                                                    ),
                                                    onPressed: () {
                                                      setState(() {
                                                        value_p = value_p + "0";
                                                      });
                                                    },
                                                  ),
                                              ),
                                              SizedBox(
                                                  height: 70,
                                                  child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                        MaterialStateProperty.all(
                                                            Colors.white),
                                                        shadowColor:
                                                        MaterialStateProperty.all(
                                                            Colors.deepOrange)),
                                                    child: Text(
                                                        "*",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 30),
                                                    ),
                                                    onPressed: () {
                                                      if (!value_p.isEmpty) {
                                                        //  after we check that the value_t is not empty then we  store our value in a variable first value
                                                        setState(
                                                              () {
                                                            _first_value =
                                                                double.parse(value_p);
                                                            value_p = "";
                                                            _character_operator = "*";
                                                          },
                                                        );
                                                      }
                                                    },
                                                  ),
                                              ),
                                              SizedBox(
                                                  height: 70,
                                                  child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                        MaterialStateProperty.all(
                                                            Colors.white),
                                                        shadowColor:
                                                        MaterialStateProperty.all(
                                                            Colors.deepOrange)),
                                                    child: Text("%",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 30),),
                                                    onPressed: () {
                                                      if (!value_p.isEmpty) {
                                                        //  after we check that the value_t is not empty then we  store our value in a variable first value
                                                        setState(
                                                              () {
                                                            _first_value =
                                                                double.parse(
                                                                    value_p);
                                                            value_p = "";
                                                            _character_operator =
                                                            "%";
                                                          },
                                                        );
                                                      }
                                                    },
                                                  )),
                                              SizedBox(
                                                  height: 70,
                                                  child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.white),
                                                        shadowColor:
                                                        MaterialStateProperty
                                                            .all(Colors
                                                            .deepOrange)),
                                                    child: Text("CLR",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15)),
                                                    onPressed: () {
                                                      setState(() {
                                                        value_p =
                                                            value_p.substring(
                                                                0,
                                                                value_p.length -
                                                                    1);
                                                      });
                                                    },
                                                  )),
                                            ])),
                                    Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: SizedBox(
                                                  height: 70,
                                                  child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.white),
                                                        shadowColor:
                                                        MaterialStateProperty
                                                            .all(Colors
                                                            .deepOrange)),
                                                    child: Text(".",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 30)),
                                                    onPressed: () {
                                                      setState(() {
                                                        value_p = value_p + ".";
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: SizedBox(
                                                  height: 70,
                                                  child: ElevatedButton(
                                                      style: ButtonStyle(
                                                          backgroundColor:
                                                          MaterialStateProperty
                                                              .all(
                                                              Colors.white),
                                                          shadowColor:
                                                          MaterialStateProperty
                                                              .all(Colors
                                                              .deepOrange)),
                                                      child: Text(
                                                          "= ",
                                                          style: TextStyle(
                                                              color:
                                                              Colors.black,
                                                              fontSize: 30),
                                                      ),
                                                      onPressed: () {
                                                        if (_first_value !=
                                                            null &&
                                                            value_p
                                                                .isNotEmpty) {
                                                          setState(() {
                                                            _second_value =
                                                                double.parse(
                                                                    value_p);
                                                            value_p =
                                                                calculate(
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
                                              ),
                                            ]))
                                  ]))))
                ]))));
  }
}

class Display extends StatelessWidget {
  const Display({Key? key, required this.value}) : super(key: key);
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(children: [
            SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Container(
                    child: Text(
                        value,
                        style: TextStyle(
                            fontSize: 20
                        )
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        border: Border.all(
                            width: 5,color: Colors.black38,style: BorderStyle.solid),
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
                        ])))
          ])),
    );
  }
}
