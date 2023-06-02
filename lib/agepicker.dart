import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class ExampleApp extends StatelessWidget {
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
      child: Scaffold(
        body: TabBarView(
          children: [
            _IntegerExample(),
          ],
        ),
      ),
    );
  }
}

class _IntegerExample extends StatefulWidget {
  @override
  __IntegerExampleState createState() => __IntegerExampleState();
}

class __IntegerExampleState extends State<_IntegerExample> {
  int _currentIntValue = 10;

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
          Divider(
            color: Colors.grey,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Container(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "What's your age?",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "PlayfairDisplay",
                      fontSize: 25),
                )),
          ),
          SizedBox(
            height: 100,
          ),
          Divider(
            color: Colors.lightGreenAccent,
            indent: 100,
            endIndent: 100,
          ),
          Container(
            child: Column(
              children: [
                NumberPicker(
                  selectedTextStyle:
                      TextStyle(fontSize: 30, color: Colors.lightGreenAccent),
                  value: _currentIntValue,
                  minValue: 0,
                  maxValue: 100,
                  step: 1,
                  haptics: false,
                  onChanged: (value) =>
                      setState(() => _currentIntValue = value),
                ),
              ],
            ),
          ),
          Divider(
            indent: 100,
            endIndent: 100,
            color: Colors.lightGreenAccent,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              "Years",
              style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontSize: 15,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 180),
                child: Text(
                  "Step 2 of 5",
                  style: TextStyle(
                      color: Colors.grey, fontFamily: "Nunito", fontSize: 15),
                ),
              ),
              SizedBox(
                width: 230,
              ),
              Container(
                padding: EdgeInsets.only(top: 180),
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
