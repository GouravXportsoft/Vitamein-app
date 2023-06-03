import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

void main() {
  runApp(exampleApp());
}

class exampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
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
                child: Text(
                  "What's your height?",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "PlayfairDisplay",
                      fontSize: 25),
                )),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
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
          Container(
            child: doubleExample(),
          ),
          Row(
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
          Row(
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
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 210),
                child: Text(
                  "Step 3 of 5",
                  style: TextStyle(
                      color: Colors.grey, fontFamily: "Nunito", fontSize: 15),
                ),
              ),
              SizedBox(
                width: 230,
              ),
              Container(
                padding: EdgeInsets.only(top: 210),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.yellowAccent,
                            Colors.greenAccent
                          ]),
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        width: 80,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
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

class doubleExample extends StatefulWidget {
  @override
  _doubleExampleState createState() => _doubleExampleState();
}

class _doubleExampleState extends State<doubleExample> {
  double _currentDoubleValue = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DecimalNumberPicker(
            selectedTextStyle:
                TextStyle(fontSize: 30, color: Colors.lightGreenAccent),
            value: _currentDoubleValue,
            minValue: 01,
            maxValue: 12,
            decimalPlaces: 2,
            haptics: false,
            onChanged: (value) => setState(() => _currentDoubleValue = value),
          ),
        ],
      ),
    );
  }
}
