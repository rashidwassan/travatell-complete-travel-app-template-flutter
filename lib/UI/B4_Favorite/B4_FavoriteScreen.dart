import 'package:flutter/material.dart';
import 'package:trevatell_template/UI/B1_Home/B1_Home_Screen/Search.dart';
import 'package:trevatell_template/UI/B1_Home/Experience/experienceList.dart';
import 'package:trevatell_template/UI/B1_Home/House/HouseList.dart';

class recommendation extends StatefulWidget {
  recommendation({Key key}) : super(key: key);

  @override
  _recommendationState createState() => _recommendationState();
}

class _recommendationState extends State<recommendation> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _widht = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 210.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/image/hotel/hotel2.jpg",
                          ),
                          fit: BoxFit.cover)),
                  child: Container(
                    height: 210.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 185.0, left: 20.0, right: 20.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => new search()));
                      },
                      child: Container(
                        height: 44.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Colors.black12.withOpacity(0.1))
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                            color: Colors.white),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 20.0,
                              ),
                              Icon(
                                Icons.search,
                                size: 20.0,
                                color: Colors.deepPurpleAccent,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Find district, Street name, Location",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black26),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 30.0),
              child: Container(
                height: 120.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12.withOpacity(0.05))
                    ]),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      _icon("Flight", "Flight", Color(0xFFF07DA4),
                          Color(0xFFF5AE87), Icons.flight_takeoff),
                      _icon("Hotspot", "Hotspot", Color(0xFF63CCD1),
                          Color(0xFF75E3AC), Icons.settings_input_antenna),
                      _icon("Nearby", "Nearby", Color(0xFF9183FC),
                          Color(0xFFDB8EF6), Icons.track_changes),
                      _icon("Relax", "Relax", Color(0xFF56B4EE),
                          Color(0xFF59CCE1), Icons.spa),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 35.0, bottom: 10.0),
              child: Text(
                "Popular Trends",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 17.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new experienceList()));
                    },
                    child: Container(
                      height: 197.0,
                      width: 95.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/image/room/room3.jpg"),
                              fit: BoxFit.cover),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Container(
                        height: 197.0,
                        width: 95.0,
                        decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.6),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                          child: Text(
                            "Modern",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder: (_, __, ___) =>
                                    new experienceList()));
                          },
                          child: Container(
                            height: 95.0,
                            width: _widht / 1.7,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/image/hotel/hotel1.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Container(
                              height: 89.0,
                              width: _widht / 1.7,
                              decoration: BoxDecoration(
                                  color: Colors.black12.withOpacity(0.6),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, left: 15.0),
                                child: Text(
                                  "Ruisitic",
                                  style: TextStyle(
                                      fontFamily: "Sofia",
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                pageBuilder: (_, __, ___) =>
                                    new experienceList()));
                          },
                          child: Container(
                            height: 95.0,
                            width: _widht / 1.7,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/image/hotel/hotel3.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Container(
                              height: 89.0,
                              width: _widht / 1.7,
                              decoration: BoxDecoration(
                                  color: Colors.black12.withOpacity(0.6),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, left: 15.0),
                                child: Text(
                                  "Minimalist",
                                  style: TextStyle(
                                      fontFamily: "Sofia",
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _icon(
      String _text, _nameAppbar, Color _color, _color2, IconData _icon) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (_, __, ___) => new houseList(
                  nameAppbar: _nameAppbar,
                )));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [_color, _color2]),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Center(
                child: Icon(
              _icon,
              color: Colors.white,
            )),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            _text,
            style: TextStyle(fontFamily: "Sofia"),
          )
        ],
      ),
    );
  }
}
