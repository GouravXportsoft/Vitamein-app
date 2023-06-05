import 'package:flutter/material.dart';

class reportScreen extends StatefulWidget {
  const reportScreen({super.key});

  @override
  State<reportScreen> createState() => _reportScreenState();
}

// ignore: camel_case_types
class _reportScreenState extends State<reportScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 100),
                child: const Text(
                  'To know your self is\n    to be confident',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PlayfairDisplay',
                    fontSize: 28,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                padding: const EdgeInsets.only(left: 60, right: 60),
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      primary: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, 'result');
                  },
                  child: const Text(
                    'Analyiz your report...',
                    style: TextStyle(fontSize: 22, fontFamily: 'Nunito'),
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 140),
                  child: const Image(
                    image: AssetImage('assets/fonts/images/Polygon 1.png'),
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.center,
                  child: const Image(
                    image: AssetImage(
                        'assets/fonts/images/118456-yogamental-health.png'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
