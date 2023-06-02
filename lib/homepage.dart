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
      body: Center(
        child: Container(
          color: Colors.black,
        ),
      ),
    );
  }
}
