import 'package:flutter/material.dart';
import 'package:trevatell_template/UI/B1_Home/House/HouseList.dart';
import 'package:trevatell_template/UI/B2_Message/AppBar_ItemScreen/notificationAppbar.dart';

import 'ListProfile/CallCenter.dart';
import 'ListProfile/SettingAcount.dart';
import 'ListProfile/addCreditCard.dart';
import 'ListProfile/category.dart';
import 'ListProfile/profileUser.dart';

class profile extends StatefulWidget {
  profile({Key key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 352.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/image/images/bannerProfile.png",
                      ),
                      fit: BoxFit.cover)),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 67.0, left: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 90.0,
                          width: 90.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/profile/profile3.jpg"),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12.withOpacity(0.1),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0)
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0, top: 20.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Alex Nourin",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.0),
                                ),
                                Text(
                                  "AlexNou21@gmail.com",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16.0),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                              ]),
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230.0),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new profileUser()));
                    },
                    child: category(
                      txt: "Profile",
                      image: "assets/image/icon/profile.png",
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new categoryProfile()));
                    },
                    child: category(
                      txt: "Category",
                      image: "assets/image/icon/box.png",
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) =>
                              new notificationAppbar()));
                    },
                    child: category(
                      txt: "Notification",
                      image: "assets/image/icon/notification.png",
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new houseList(
                                nameAppbar: "Discount",
                              )));
                    },
                    child: category(
                      txt: "Discount",
                      image: "assets/image/icon/coupon.png",
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new addCreditCard()));
                    },
                    child: category(
                      txt: "Card",
                      image: "assets/image/icon/card.png",
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new callCenter()));
                    },
                    child: category(
                      txt: "Call Center",
                      image: "assets/image/icon/callCenter.png",
                      padding: 20.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new settingAcount()));
                    },
                    child: category(
                      txt: "Settings",
                      image: "assets/image/icon/settings.png",
                      padding: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Component category class to set list
class category extends StatelessWidget {
  @override
  String txt, image;
  GestureTapCallback tap;
  double padding;

  category({this.txt, this.image, this.tap, this.padding});

  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: padding),
                      child: Image.asset(
                        image,
                        height: 25.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Text(
                        txt,
                        style: TextStyle(
                          fontSize: 14.5,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Sofia",
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black26,
                    size: 15.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Divider(
            color: Colors.black12,
          )
        ],
      ),
    );
  }
}
