import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState(){

    Timer(
      Duration(seconds: 1),
        () => Navigator.pushNamed(context, '/sign-in')
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
          child: Container(
        width: 130,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/splash_screen.png',
            ),
          ),
        ),
      )),
    );
  }
}
