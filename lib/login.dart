import 'package:flutter/material.dart';
// import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:po/afterlogin.dart';
// import 'package:po/afterlogin.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login_screen";
  final String name;
  final String yname;
  LoginScreen({@required this.name, this.yname});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final globalKey = GlobalKey<ScaffoldState>();

  TextEditingController yourname = new TextEditingController();
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: globalKey,
        body: Container(
            padding: EdgeInsets.only(top: 213.0, left: 47.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text('Welcome back!',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            textStyle:
                                TextStyle(color: Colors.black, fontSize: 24))),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text(
                      'Please sign in before continue',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          textStyle:
                              TextStyle(color: Colors.grey, fontSize: 14)),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.only(top: 32),
                    width: 288,
                    child: TextField(
                      controller: yourname,
                      autofocus: false,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          textStyle:
                              TextStyle(color: Colors.grey[600], fontSize: 14)),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'your name',
                          filled: true,
                          hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              textStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
                          hintText: "Type your Username",
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(20.0),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(122, 51, 215, 100)))),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.only(top: 12),
                    width: 288,
                    child: TextField(
                      controller: username,
                      autofocus: false,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          textStyle:
                              TextStyle(color: Colors.grey[600], fontSize: 14)),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'username',
                          filled: true,
                          hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              textStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
                          hintText: "Type your Username",
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(20.0),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(122, 51, 215, 100)))),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.only(top: 12),
                    width: 288,
                    child: TextField(
                      autofocus: false,
                      obscureText: true,
                      controller: password,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          textStyle:
                              TextStyle(color: Colors.grey[600], fontSize: 14)),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'password',
                          filled: true,
                          hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              textStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
                          hintText: "Type your Username",
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(20.0),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(122, 51, 215, 100)))),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 288,
                      height: 70,
                      padding: EdgeInsets.only(top: 16),
                      child: new RaisedButton(
                        color: Color.fromRGBO(122, 51, 215, 1),
                        child: Text('Sign in'),
                        textColor: Colors.white,
                        onPressed: () {
                          if (username.text == '') {
                            showSnackBar('Please fill username field');
                          } else if (password.text != '123') {
                            showSnackBar(
                                'Wrong Password! Input 123 for Password');
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AfterLogin(
                                        name: username.text,
                                        yname: yourname.text)));
                          }
                        },
                      ),
                    ))
              ],
            )));
  }

  showSnackBar(text) {
    final snackbar = SnackBar(
      content: Text(text),
      backgroundColor: Colors.red[900],
      action: SnackBarAction(
        label: '',
        onPressed: () {
          print('Clicked');
        },
      ),
    );
    globalKey.currentState.showSnackBar(snackbar);
  }
}
