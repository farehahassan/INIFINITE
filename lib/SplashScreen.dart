import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(
                    title: '',
                  )));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff1B191C),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            child: Image.asset(
              'assets/images/infiniteLogoNew.png',
              width: 250,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("INFINITE" , style: GoogleFonts.bebasNeue(
            fontSize: 70,
            color: Colors.white
          ))
        ],
      ) ,

      ),
    );
  }
}
// Image.asset(
// 'assets/images/infiniteLogoNew.png',
// width: 200,
// ),