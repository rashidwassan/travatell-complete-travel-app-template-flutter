import 'package:flutter/material.dart';

import 'Login.dart';

class signuporlogin extends StatefulWidget {
  @override
  _signuporloginState createState() => _signuporloginState();
}

class _signuporloginState extends State<signuporlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/image/splashScreen/headerLogin.png",
                    height: 600.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 270.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Trevatel",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 44.0,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Berlin"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              "discover place what you want",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Sans",
                                  fontWeight: FontWeight.w200),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new Login()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    height: 52.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Center(
                        child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Gotik",
                        fontSize: 14.5,
                      ),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
