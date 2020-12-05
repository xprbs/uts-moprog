import 'package:flutter/material.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class AfterLogin extends StatefulWidget {
  final String name;
  final String yname;
  AfterLogin({@required this.name, this.yname});
  @override
  _AfterLoginState createState() => _AfterLoginState();
}

class _AfterLoginState extends State<AfterLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 104)),
          Container(
            height: 150,
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                Container(
                  // color: Colors.red,
                  child: Center(
                    child: Icon(Feather.arrow_left),
                  ),
                ),
                Container(
                  // color: Colors.blue,
                  child: Center(
                      child: Image(
                    image: AssetImage('images/profile.png'),
                  )),
                ),
                Container(
                  // color: Colors.green,
                  child: Center(
                    child: Icon(Feather.sliders),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Text(this.widget.yname,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      textStyle: TextStyle(color: Colors.black, fontSize: 18))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Text(this.widget.name,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      textStyle: TextStyle(
                          color: Color.fromRGBO(122, 51, 215, 1),
                          fontSize: 12))),
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              height: 450,
              child: GridView.count(crossAxisCount: 3, children: [
                Container(
                  margin: EdgeInsets.all(5),
                  // color: Colors.blue,
                  child: Center(
                      child: Image(
                    image: AssetImage('images/1.png'),
                  )),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  // color: Colors.blue,
                  child: Center(
                      child: Image(
                    image: AssetImage('images/2.png'),
                  )),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  // color: Colors.blue,
                  child: Center(
                      child: Image(
                    image: AssetImage('images/3.png'),
                  )),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  // color: Colors.blue,
                  child: Center(
                      child: Image(
                    image: AssetImage('images/4.png'),
                  )),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  // color: Colors.blue,
                  child: Center(
                      child: Image(
                    image: AssetImage('images/5.png'),
                  )),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  // color: Colors.blue,
                  child: Center(
                      child: Image(
                    image: AssetImage('images/9.png'),
                  )),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  // color: Colors.blue,
                  child: Center(
                      child: Image(
                    image: AssetImage('images/6.png'),
                  )),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  // color: Colors.blue,
                  child: Center(
                      child: Image(
                    image: AssetImage('images/7.png'),
                  )),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  // color: Colors.blue,
                  child: Center(
                      child: Image(
                    image: AssetImage('images/8.png'),
                  )),
                ),
              ]))
        ],
      ),
    );
  }
}
