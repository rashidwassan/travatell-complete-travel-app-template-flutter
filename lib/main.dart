import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trevatell_template/UI/IntroApps/OnBoarding.dart';
import 'package:flutter/services.dart';

import 'UI/Bottom_Nav_Bar/bottomNavBar.dart';
import 'UI/IntroApps/Login.dart';

void main() => runApp(splash());

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///Set color status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    /// To set orientation always portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      home: splashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          primaryColorLight: Colors.white,
          primaryColorBrightness: Brightness.light,
          primaryColor: Colors.white),
    );
  }
}

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void _Navigator() {
    Navigator.of(context).pushReplacement(PageRouteBuilder(
        pageBuilder: (_, __, ___) => new onBoarding(),
        transitionDuration: Duration(milliseconds: 2000),
        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
          return Opacity(
            opacity: animation.value,
            child: child,
          );
        }));
  }

  /// Set timer splash
  _timer() async {
    return Timer(Duration(milliseconds: 2300), _Navigator);
  }

  @override
  void initState() {
    super.initState();
    _timer();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/splashScreen/splashScreen.png"),
                fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: Text(
              "Trevatel",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 44.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Berlin"),
            ),
          ),
        ),
      ),
    );
  }
}
