import 'package:flutter/material.dart';

import 'exploreTrip.dart';

class trip extends StatefulWidget {
  trip({Key key}) : super(key: key);

  @override
  _tripState createState() => _tripState();
}

class _tripState extends State<trip> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/image/destinationPopuler/tripBackground.png",
            height: _height,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Where to trip?",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                        fontSize: 28.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Start planning your first adventure",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w300,
                        fontSize: 18.0,
                        color: Colors.black45),
                  ),
                  SizedBox(
                    height: 11.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => exploreTrip()));
                    },
                    child: Container(
                      height: 45.0,
                      width: 140.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          border:
                              Border.all(color: Color(0xFF8DA2BF), width: 1.0)),
                      child: Center(
                        child: Text(
                          "Explore Trips",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: Color(0xFF8DA2BF)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
