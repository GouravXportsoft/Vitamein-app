import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(15),
            color: Colors.black,
            child: Column(
              children: [
                const Divider(
                  color: Colors.grey,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Your Diet Plan',
                    style: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 22,
                        fontFamily: 'PlayfairDisplay'),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Based on test uploaded on 2 May 2023',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 450,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 75, 74, 74),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
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
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: (RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        // ignore: deprecated_member_use
                        primary: Colors.white,
                        side: const BorderSide(
                          color: Colors.lightGreenAccent,
                        ), //<-- SEE HERE
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Take a new test',
                        style: TextStyle(fontSize: 18),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
