import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

void main() {
  runApp(const exampleApp());
}

// ignore: camel_case_types
class exampleApp extends StatelessWidget {
  const exampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(body: _IntegerExample()),
    );
  }
}

class _IntegerExample extends StatefulWidget {
  @override
  __IntegerExampleState createState() => __IntegerExampleState();
}

class __IntegerExampleState extends State<_IntegerExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 2, top: 15),
            child: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new)),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Container(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: const Text(
                  "What's your height?",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "PlayfairDisplay",
                      fontSize: 25),
                )),
          ),
          const SizedBox(
            height: 100,
          ),
          const Row(
            children: [
              Expanded(
                child: Divider(
                  indent: 120,
                  color: Colors.lightGreenAccent,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Divider(
                  endIndent: 120,
                  color: Colors.lightGreenAccent,
                ),
              )
            ],
          ),
          const doubleExample(),
          const Row(
            children: [
              Expanded(
                child: Divider(
                  indent: 120,
                  color: Colors.lightGreenAccent,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Divider(
                  endIndent: 120,
                  color: Colors.lightGreenAccent,
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Feet",
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 69,
              ),
              Text(
                "Inches",
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, top: 210),
                child: const Text(
                  "Step 3 of 5",
                  style: TextStyle(
                      color: Colors.grey, fontFamily: "Nunito", fontSize: 15),
                ),
              ),
              const SizedBox(
                width: 230,
              ),
              Container(
                padding: const EdgeInsets.only(top: 210),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Colors.yellowAccent,
                            Colors.greenAccent
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        width: 80,
                        height: 50,
                        alignment: Alignment.center,
                        child: const Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class doubleExample extends StatefulWidget {
  const doubleExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _doubleExampleState createState() => _doubleExampleState();
}

// ignore: camel_case_types
class _doubleExampleState extends State<doubleExample> {
  double _currentDoubleValue = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecimalNumberPicker(
          selectedTextStyle:
              const TextStyle(fontSize: 30, color: Colors.lightGreenAccent),
          value: _currentDoubleValue,
          minValue: 01,
          maxValue: 12,
          decimalPlaces: 2,
          haptics: false,
          onChanged: (value) => setState(() => _currentDoubleValue = value),
        ),
      ],
    );
  }
}
