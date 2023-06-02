import 'package:flutter/material.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  String? selectedOption;
  String? selectedOption1;
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
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
          color: Colors.black,
          child: Column(
            children: [
              const Divider(
                color: Colors.grey,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Profile',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightGreenAccent,
                      fontFamily: 'PlayfairDisplay'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Name',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 75, 74, 74),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Age',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: TextField(
                      // textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          hintText: "Years",
                          hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold),
                          fillColor: const Color.fromARGB(255, 75, 74, 74),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Height',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 75, 74, 74),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Weight',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: TextField(
                      // textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          hintText: "Kgs",
                          hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold),
                          fillColor: const Color.fromARGB(255, 75, 74, 74),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Gender",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Male',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Radio(
                      value: 'Male',
                      groupValue: selectedOption,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.lightGreenAccent),
                      onChanged: (value) {
                        setState(
                          () {
                            selectedOption = value;
                          },
                        );
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Female',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Radio(
                      value: 'Female',
                      groupValue: selectedOption,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.lightGreenAccent),
                      onChanged: (value) {
                        setState(
                          () {
                            selectedOption = value;
                          },
                        );
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Perfer not to say',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Radio(
                      value: 'Perfer not to say',
                      groupValue: selectedOption,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.lightGreenAccent),
                      onChanged: (value) {
                        setState(
                          () {
                            selectedOption = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Diet type",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Vegetarian',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Radio(
                      value: 'Vegetarian',
                      groupValue: selectedOption1,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.lightGreenAccent),
                      onChanged: (value) {
                        setState(
                          () {
                            selectedOption1 = value;
                          },
                        );
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Eggitarian',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Radio(
                      value: 'Eggitarian',
                      groupValue: selectedOption1,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.lightGreenAccent),
                      onChanged: (value) {
                        setState(
                          () {
                            selectedOption1 = value;
                          },
                        );
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Non-vegetarian',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Radio(
                      value: 'Non-vegetarian',
                      groupValue: selectedOption1,
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => Colors.lightGreenAccent),
                      onChanged: (value) {
                        setState(
                          () {
                            selectedOption1 = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 10, right: 10, bottom: 5.0),
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Colors.yellowAccent, Colors.greenAccent]),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Done',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
