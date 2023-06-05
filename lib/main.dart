import 'package:flutter/material.dart';
import 'package:vitamein_flutter/entername.dart';
import 'package:vitamein_flutter/login.dart';
import 'package:vitamein_flutter/otp.dart';
import 'package:vitamein_flutter/dietchart.dart';
import 'package:vitamein_flutter/agepicker.dart';
import 'bottom.dart';
import 'package:vitamein_flutter/reportscreen.dart';
import 'package:vitamein_flutter/startnow.dart';
import 'package:vitamein_flutter/result.dart';

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
        'dietchart': (context) => const DietChart(),
        'agepicker': (context) => const ExampleApp(),
        'bottombar': (context) => const BottomBar(),
        'reportscreen': (context) => const reportScreen(),
        'result': (context) => const ResultScreen(),
      },
    ),
  );
}
