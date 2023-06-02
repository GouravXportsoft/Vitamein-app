// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:text_divider/text_divider.dart';

class DietChart extends StatefulWidget {
  const DietChart({super.key});

  @override
  State<DietChart> createState() => _DietChartState();
}

class _DietChartState extends State<DietChart> {
  String dropdownValue = 'Vegetarian';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          color: Colors.black,
          child: Column(
            children: [
              const Divider(
                color: Colors.grey,
              ),
              Row(
                children: [
                  const Text(
                    "Diet Chart",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PlayfairDisplay',
                        fontSize: 20),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: dropdownValue,
                        dropdownColor: Colors.black,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconSize: 24,
                        elevation: 10,
                        style: const TextStyle(
                            color: Colors.lightGreenAccent,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: ['Vegetarian', 'Eggetarian', 'Non-Vegetarian']
                            .map((String value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Container(
                width: double.infinity,
                height: 280,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 74, 74),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/fonts/Isolation_Mode(5).png'),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Breakfast',
                            style: TextStyle(
                                color: Colors.lightGreenAccent,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          const SizedBox(
                            width: 145,
                          ),
                          const Icon(
                            Icons.access_time_rounded,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          const Text(
                            '6:00 - 7:00 AM',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 7.0,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Choose any one from belwo options',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Nunito',
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Poha',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          Text(
                            '1 medium size katori',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Upma',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 175,
                          ),
                          Text(
                            '1 medium size katori',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Veg Sandwich',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 75,
                          ),
                          Text(
                            '1 Nos. (Whole wheat bread)',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Egg',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 280,
                          ),
                          Text(
                            '1 Nos.',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 74, 74),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/fonts/Isolation_Mode(4).png'),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Mid Morning',
                            style: TextStyle(
                                color: Colors.lightGreenAccent,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          const SizedBox(
                            width: 140,
                          ),
                          const Icon(
                            Icons.access_time_rounded,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '11:00 AM',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Fruits',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 165,
                          ),
                          Text(
                            '    (Avoid banana, mango\n\n  grapes, khajoor, chikoo)',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Container(
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 74, 74),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/fonts/Isolation_Mode(2).png'),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Lunch',
                            style: TextStyle(
                                color: Colors.lightGreenAccent,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          const SizedBox(
                            width: 163,
                          ),
                          const Icon(
                            Icons.access_time_rounded,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '1:00 - 2:00 PM',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Green Moong Dal/\nPaneer sabzi',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Text(
                            '1 katori',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Salad',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 265,
                          ),
                          Text(
                            '1 plate',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Chapati',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 255,
                          ),
                          Text(
                            '2 Nos.',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextDivider.horizontal(
                        text: const Text(
                          'or',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold),
                        ),
                        color: Colors.grey,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Dry Vegetable',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 205,
                          ),
                          Text(
                            '1 katori',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Dahi',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 265,
                          ),
                          Text(
                            '1 katori',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Container(
                width: double.infinity,
                height: 180,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 74, 74),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/fonts/Isolation_Mode(1).png'),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Evening Snack',
                            style: TextStyle(
                                color: Colors.lightGreenAccent,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          const SizedBox(
                            width: 105,
                          ),
                          const Icon(
                            Icons.access_time_rounded,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '4:00 - 5:00 PM',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Roasted Makhana/\nBhuna Chana',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 169,
                          ),
                          Text(
                            '(1 serving)',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Chai/Green tea',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 127,
                          ),
                          Text(
                            '1 cup (without sugar)',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Container(
                width: double.infinity,
                height: 270,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 74, 74),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/fonts/Isolation_Mode.png'),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Dinner',
                            style: TextStyle(
                                color: Colors.lightGreenAccent,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          const SizedBox(
                            width: 160,
                          ),
                          const Icon(
                            Icons.access_time_rounded,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '7:00 - 8:00 PM',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Soup',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 272,
                          ),
                          Text(
                            '1 katori',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Vegetable',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 243,
                          ),
                          Text(
                            '1 katori',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Chapati',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 262,
                          ),
                          Text(
                            '2 Nos.',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextDivider.horizontal(
                        text: const Text(
                          'or',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold),
                        ),
                        color: Colors.grey,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Roasted Chicken',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Text(
                            '1 katori',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 74, 74),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/fonts/Isolation_Mode(3).png'),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Bedtime',
                            style: TextStyle(
                                color: Colors.lightGreenAccent,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          const SizedBox(
                            width: 180,
                          ),
                          const Icon(
                            Icons.access_time_rounded,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            '10:00 PM',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Text(
                            '\u2022',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Warm Milk',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 250,
                          ),
                          Text(
                            '1 cup',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
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
