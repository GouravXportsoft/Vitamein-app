import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 2, top: 15),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_new)),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Great! You look\n your first test",
                style: TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 80,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '5',
                    style: TextStyle(fontSize: 50, fontFamily: 'PPWoodland'),
                  ),
                  Text(
                    '/10',
                    style: TextStyle(fontSize: 47, fontFamily: 'PPWoodland'),
                  )
                ],
              ),
              const Text(
                'Your Wellness Score\nbased on your report',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          minimumSize: const Size.fromHeight(60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10)), // Text Color (Foreground color)
                        ),
                        child: const Text(
                          'See Result',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
