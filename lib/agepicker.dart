import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

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
          const Divider(
            color: Colors.grey,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Container(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: const Text(
                  "What's your age?",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "PlayfairDisplay",
                      fontSize: 25),
                )),
          ),
          const SizedBox(
            height: 100,
          ),
          const Divider(
            color: Colors.lightGreenAccent,
            indent: 100,
            endIndent: 100,
          ),
          Column(
            children: [
              NumberPicker(
                selectedTextStyle: const TextStyle(
                    fontSize: 30, color: Colors.lightGreenAccent),
                value: _currentIntValue,
                minValue: 0,
                maxValue: 100,
                step: 1,
                haptics: false,
                onChanged: (value) => setState(() => _currentIntValue = value),
              ),
            ],
          ),
          const Divider(
            indent: 100,
            endIndent: 100,
            color: Colors.lightGreenAccent,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Years",
            style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 15,
                fontFamily: "Nunito",
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, top: 180),
                child: const Text(
                  "Step 2 of 5",
                  style: TextStyle(
                      color: Colors.grey, fontFamily: "Nunito", fontSize: 15),
                ),
              ),
              const SizedBox(
                width: 230,
              ),
              Container(
                padding: const EdgeInsets.only(top: 180),
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
