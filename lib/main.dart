import 'package:flutter/material.dart';
import 'package:vitamein_flutter/entername.dart';
import 'package:vitamein_flutter/login.dart';
import 'package:vitamein_flutter/otp.dart';

import 'package:vitamein_flutter/startnow.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'phone',
      routes: {
        'phone': (context) => const login(),
        'otp': (context) => const otp(),
        'entername': (context) => const entername(),
        'startnow': (context) => const startnow(),
      },
    ),
  );
}
