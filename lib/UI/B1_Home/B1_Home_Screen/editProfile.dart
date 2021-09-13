import 'dart:io';

import 'package:flutter/material.dart';

class editProfile extends StatefulWidget {
  editProfile({Key key}) : super(key: key);

  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  String _date = "16/04/1998";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("Edit Profile",
            style: TextStyle(fontFamily: "Sofia", color: Colors.black)),
        actions: <Widget>[
          Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Text("Done",
                style: TextStyle(
                    color: Color(0xFF7F53AC),
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 17.0)),
          ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        height: 420.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15.0,
                              spreadRadius: 10.0,
                              color: Colors.black12.withOpacity(0.03),
                            )
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 50.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0,
                                  right: 15.0,
                                  bottom: 10.0,
                                  top: 50.0),
                              child: Theme(
                                data: ThemeData(
                                  highlightColor: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Username",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Colors.black26,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 40.0),
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          hintText: 'Alissa Hearth',
                                          hintStyle: TextStyle(
                                              fontFamily: "Sofia",
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 17.0),
                                          enabledBorder:
                                              new UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white,
                                                width: 1.0,
                                                style: BorderStyle.none),
                                          ),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black12.withOpacity(0.1),
                              height: 0.3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0,
                                  right: 15.0,
                                  bottom: 10.0,
                                  top: 10.0),
                              child: Theme(
                                data: ThemeData(
                                  highlightColor: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Email",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Colors.black26,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 40.0),
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          hintText: 'Alissahearth@gmail.com',
                                          hintStyle: TextStyle(
                                              fontFamily: "Sofia",
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 17.0),
                                          enabledBorder:
                                              new UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white,
                                                width: 1.0,
                                                style: BorderStyle.none),
                                          ),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black12.withOpacity(0.1),
                              height: 0.3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0,
                                  right: 15.0,
                                  bottom: 10.0,
                                  top: 10.0),
                              child: Theme(
                                data: ThemeData(
                                  highlightColor: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Gender",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Colors.black26,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 40.0),
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                          hintText: 'Female',
                                          hintStyle: TextStyle(
                                              fontFamily: "Sofia",
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 17.0),
                                          enabledBorder:
                                              new UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white,
                                                width: 1.0,
                                                style: BorderStyle.none),
                                          ),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black12.withOpacity(0.1),
                              height: 0.3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0,
                                  right: 15.0,
                                  bottom: 10.0,
                                  top: 10.0),
                              child: Theme(
                                data: ThemeData(
                                  highlightColor: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Date Of Birth",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Colors.black26,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 40.0),
                                        child: InkWell(
                                          onTap: () {
                                         
                                          },
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10.0),
                                              child: Container(
                                                height: 53.5,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 1.0,
                                                            right: 12.0,
                                                            top: 14.0),
                                                    child: Text(
                                                      "$_date",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: "Sofia",
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 17.0),
                                                    )),
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black12.withOpacity(0.1),
                              height: 0.3,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                      alignment: Alignment.topCenter,
                      child: Stack(children: <Widget>[
                        Hero(
                          tag: 'hero-tag-profile',
                          child: Container(
                            height: 130.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/image/images/GirlProfile.png",
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80.0, left: 90.0),
                          child: InkWell(
                            onTap: () {
                            },
                            child: Container(
                              height: 45.0,
                              width: 45.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                  size: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]))
                
            ],
          ),
        ),
      ),
    );
  }
}
