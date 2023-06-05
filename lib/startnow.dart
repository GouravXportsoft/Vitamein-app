import 'package:flutter/material.dart';

// ignore: camel_case_types
class startnow extends StatefulWidget {
  const startnow({super.key});

  @override
  State<startnow> createState() => _startnowState();
}

// ignore: camel_case_types
class _startnowState extends State<startnow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Text(
          'Vitamein',
          style: TextStyle(
              color: Colors.lightGreenAccent,
              fontFamily: 'PaytoneOne',
              fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Colors.lightGreenAccent,
            ),
            onPressed: () {
              Navigator.popAndPushNamed(context, 'bottombar');
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: const Text(
                      'Hello',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/fonts/images/pngegg.png',
                      width: 30, height: 30),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 220,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Upload your blood test\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: 'report & ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text: 'Get curated your diet\nplan\n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        fontFamily: 'Nunito'),
                                  ),
                                  TextSpan(
                                    text:
                                        '  \n    Customised diet on your results\n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'Nunito'),
                                  ),
                                  TextSpan(
                                    text: '  \n    Accurate & fast analysis\n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'Nunito'),
                                  ),
                                  TextSpan(
                                    text:
                                        '  \n    Know "How to make it better"',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'Nunito'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      // decoration: BoxDecoration(
                      //     color: Colors.lightGreenAccent,
                      //     borderRadius: BorderRadius.circular(10)),
                      width: double.infinity,
                      // color: Colors.lightGreenAccent,
                      child: TextButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, 'dietchart');
                        },
                        style: const ButtonStyle(alignment: Alignment.center),
                        child: const Text(
                          'Start now',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                  // padding: EdgeInsets.only(left: 10, right: 10),
                  height: 95,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, 'agepicker');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 214, 214, 247),
                          Color.fromARGB(255, 214, 214, 247)
                        ]),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: RichText(
                                  text: const TextSpan(children: [
                                    TextSpan(
                                        text: '  Complete your profile',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300))
                                  ]),
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Image.asset(
                                'assets/fonts/images/dna_1f9ec.png',
                                height: 22,
                                width: 22,
                              ),
                              const SizedBox(width: 80),
                              Image.asset(
                                'assets/fonts/images/7294743 1.png',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, 'reportscreen');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 253, 238, 236),
                          Color.fromARGB(255, 253, 238, 236)
                        ]),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "  Blood test guide",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Image.asset(
                                  'assets/fonts/images/open-book_1f4d6.png',
                                  height: 22,
                                  width: 22,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  "  Know it all about your blood & it's makers",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                ))
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
