import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

// ignore: camel_case_types
class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

// ignore: camel_case_types
class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Verify OTP',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text(
                'We have sent 6 digit otp to',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Pinput(
                length: 6,
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'entername');
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
                          'Submit',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'OTP not recived ?',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.lightGreenAccent, // Text Color
                ),
                child: const Text(
                  'Resend OTP',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
