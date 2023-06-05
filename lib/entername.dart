import 'package:flutter/material.dart';

// ignore: camel_case_types
class entername extends StatefulWidget {
  const entername({super.key});

  @override
  State<entername> createState() => _enternameState();
}

// ignore: camel_case_types
class _enternameState extends State<entername> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: const EdgeInsets.only(top: 100),
        color: Colors.black,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.topLeft,
              child: const Text(
                'Enter your name',
                style: TextStyle(
                    color: Colors.grey, fontSize: 25, fontFamily: 'Nunito'),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: const TextField(
                style: TextStyle(
                  color: Colors.lightGreenAccent,
                  fontFamily: 'PlayfairDisplay',
                  fontSize: 50,
                ),
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: "your name",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, 'startnow');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.yellowAccent, Colors.greenAccent]),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
