import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './categories_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool ShowLoadingC = false;
  dynamic _timer;

  // void getCategories(){
  //   .getData()

  //   .then((value) => Navigator.of(context).popAndPushNamed(CategoriesScreen.routeName)

  //   .catchError((e) => pragma(e));
  // }

  @override
  void initState() {
    super.initState();

    // initialzing the timer 
    _timer = Timer(
        const Duration(seconds: 3),
        () {
              ShowLoadingC = true;
              setState(() {});
            });
  }

  @override
  void dispose() {
    // dispoising the timer
    _timer.cancil();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HM',
            style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          // loading animation
          if (ShowLoadingC)
            const SizedBox(
              height: 20.0,
              width: 20.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Color.fromARGB(86, 0, 0, 0)),
                strokeWidth: 1.5,
              ),
            ),
          // loading the text
          if (ShowLoadingC)
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                'Loading',
                style: GoogleFonts.poppins(),
              ),
            ),
        ],
      ),
    ));
  }
}
