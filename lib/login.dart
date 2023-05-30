// ignore_for_file: unused_local_variable

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:vitamein_flutter/squartile.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  TextEditingController countrycode = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  var passPhone = TextEditingController();

  Country selectedCountry = Country(
    phoneCode: '+91',
    countryCode: 'IN',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'india',
    example: 'india',
    displayName: 'india',
    displayNameNoCountryCode: 'IN',
    e164Key: '',
  );

  @override
  Widget build(BuildContext context) {
    // double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                // padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: const Text(
                  "Vitamein",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 165, 224, 54),
                      fontFamily: 'Schyler'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Get curated diet plan",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 100.0,
                      color: Colors.grey,
                    ),
                  ),
                  const Text(
                    'Login or Sign up',
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 100.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(right: 10, left: 10),
                height: 50,
                width: double.infinity,
                child: TextFormField(
                  controller: passPhone,
                  style: const TextStyle(color: Colors.grey),
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  decoration: InputDecoration(
                    hintText: 'Enter Phone Number',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 252, 250, 250)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.greenAccent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.greenAccent,
                      ),
                    ),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: () {
                          showCountryPicker(
                              context: context,
                              countryListTheme: const CountryListThemeData(
                                bottomSheetHeight: 450,
                              ),
                              onSelect: (value) {
                                setState(() {
                                  selectedCountry = value;
                                });
                              });
                        },
                        child: Text(
                          "${selectedCountry.flagEmoji}  ${selectedCountry.phoneCode}",
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    suffixIcon: phoneController.text.length > 9
                        ? Container(
                            height: 30,
                            width: 30,
                            margin: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.green),
                            child: const Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        : null,
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      String phonenum = passPhone.text.toString();
                      Navigator.pushNamed(context, 'otp');
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
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                // padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: const Text(
                  'or login using',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  squaretile(
                      onTap: () {},
                      imagePath: 'assets/fonts/images/pngwing.com(1).png'),
                  const SizedBox(width: 30),
                  squaretile(
                      onTap: () {},
                      imagePath: 'assets/fonts/images/pngwing.com(2).png')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
