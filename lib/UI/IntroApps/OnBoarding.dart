import 'package:flutter/material.dart';
import 'package:trevatell_template/Library/intro_views_flutter-2.4.0/lib/Models/page_view_model.dart';
import 'package:trevatell_template/Library/intro_views_flutter-2.4.0/lib/intro_views_flutter.dart';
import 'package:trevatell_template/UI/IntroApps/Login.dart';

import 'Intro.dart';
import 'onBoardingVideo.dart';

class onBoarding extends StatefulWidget {
  @override
  _onBoardingState createState() => _onBoardingState();
}

var _fontHeaderStyle = TextStyle(
    fontFamily: "Gotik",
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
    color: Colors.black87,
    letterSpacing: 1.5);

var _fontDescriptionStyle = TextStyle(
    fontFamily: "Sans",
    fontSize: 15.0,
    color: Colors.black38,
    fontWeight: FontWeight.w400);

final pages = [
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Easy Find Hotel',
        style: _fontHeaderStyle,
      ),
      body: Text(
          'Haselfree  booking  of  flight  tickets  \nwith  full  refund  on  cancelation',
          textAlign: TextAlign.center,
          style: _fontDescriptionStyle),
      mainImage: Image.asset(
        'assets/image/onBoardingImage/onBoarding1.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Booking Hotel',
        style: _fontHeaderStyle,
      ),
      body: Text(
          'Haselfree  booking  of  flight  tickets  \nwith  full  refund  on  cancelation',
          textAlign: TextAlign.center,
          style: _fontDescriptionStyle),
      mainImage: Image.asset(
        'assets/image/onBoardingImage/onBoarding2.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
  new PageViewModel(
      pageColor: Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Discover Place',
        style: _fontHeaderStyle,
      ),
      body: Text(
          'Haselfree  booking  of  flight  tickets  \nwith  full  refund  on  cancelation',
          textAlign: TextAlign.center,
          style: _fontDescriptionStyle),
      mainImage: Image.asset(
        'assets/image/onBoardingImage/onBoarding3.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),
];

class _onBoardingState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Colors.black45,
      skipText: Text(
        "SKIP",
        style: _fontDescriptionStyle.copyWith(
            color: Colors.purple,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      doneText: Text(
        "DONE",
        style: _fontDescriptionStyle.copyWith(
            color: Colors.purple,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.0),
      ),
      onTapDoneButton: () {
        Navigator.of(context).pushReplacement(
            PageRouteBuilder(pageBuilder: (_, __, ___) => new introVideo()));
      },
    );
  }
}
