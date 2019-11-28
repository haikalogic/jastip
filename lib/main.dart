import 'package:flutter/material.dart';
import './login.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  void completed() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset("img/logo.png", width: 200, height: 200,)
              ],
            ),
            // new Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: new Text(
            //         "NITIP DONG!",
            //         style: new TextStyle(fontSize: 30.0, fontFamily: 'Ceria', color: Colors.white),
            //       ),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}