import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trevatell_template/UI/B1_Home/B1_Home_Screen/B1_Home_Screen.dart';
import 'package:trevatell_template/UI/B2_Message/B2_MessageScreen.dart';
import 'package:trevatell_template/UI/B3_Trips/B3_TripScreen.dart';
import 'package:trevatell_template/UI/B4_Favorite/B4_FavoriteScreen.dart';
import 'package:trevatell_template/UI/B5_Profile/B5_ProfileScreen.dart';
import 'custom_nav_bar.dart';

class bottomNavBar extends StatefulWidget {
  bottomNavBar();

  _bottomNavBarState createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int currentIndex = 0;
  bool _color = true;
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return new Home();
        break;
      case 1:
        return new noMessage();
        break;
      case 2:
        return new trip();
        break;
      case 3:
        return new recommendation();
        break;
      case 4:
        return new profile();
        break;
      default:
        return new Home();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: callPage(currentIndex),
      bottomNavigationBar: BottomNavigationDotBar(
          color: Colors.black26,
          items: <BottomNavigationDotBarItem>[
            BottomNavigationDotBarItem(
                icon: IconData(0xe900, fontFamily: 'home'),
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                  });
                }),
            BottomNavigationDotBarItem(
                icon: IconData(0xe900, fontFamily: 'message'),
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                }),
            BottomNavigationDotBarItem(
                icon: IconData(
                  0xe900,
                  fontFamily: 'trip',
                ),
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                }),
            BottomNavigationDotBarItem(
                icon: IconData(
                  0xe900,
                  fontFamily: 'hearth',
                ),
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                }),
            BottomNavigationDotBarItem(
                icon: IconData(0xe900, fontFamily: 'profile'),
                onTap: () {
                  setState(() {
                    currentIndex = 4;
                  });
                }),
          ]),
    );
  }
}
