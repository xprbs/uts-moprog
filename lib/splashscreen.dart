import 'dart:async';

import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:po/login.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "splash_screen";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer;
  removeScreen() {
    return _timer = Timer(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacementNamed(LoginScreen.id);
    });
  }

  @override
  void initState() {
    super.initState();
    removeScreen();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(122, 51, 215, 100),
      // appBar: AppBar(title: new Text('Footer View Example')),
      body: new FooterView(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(top: 250.0),
            child: Center(
              child: new Image.asset(
                "images/Splash.png",
                width: 200.0,
              ),
            ),
          ),
        ],
        footer: new Footer(
          backgroundColor: Color.fromRGBO(122, 51, 215, 0),
          child: Center(
              child: Text(
            'Copyright 2020 - 18111124 - Pandu Prabu',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                textStyle: TextStyle(color: Colors.white, fontSize: 12)),
          )),
        ),
        flex: 1, //default flex is 2
      ),
    );
  }
}
