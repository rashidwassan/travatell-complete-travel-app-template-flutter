import 'package:flutter/material.dart';
import 'package:trevatell_template/UI/B1_Home/Hotel/Hotel_Detail_Concept_2/maps.dart';

class searchHotel extends StatefulWidget {
  @override
  _searchHotelState createState() => _searchHotelState();
}

class _searchHotelState extends State<searchHotel> {
  @override
  var line = Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
      child: Container(
        height: 0.5,
        width: double.infinity,
        color: Colors.black12,
      ));

  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text(
          "Search",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 16.0,
              fontFamily: "Gotik",
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.deepPurpleAccent),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, bottom: 25.0, top: 20.0),
                child: Container(
                  height: 546.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12.withOpacity(0.1),
                            blurRadius: 10.0,
                            spreadRadius: 2.0)
                      ]),

                  ///
                  ///
                  /// This is to create card in home screen
                  ///
                  ///
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          "Hotel Location",
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "Gotik",
                              fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 10.0, right: 10.0),
                        child: Theme(
                          data: ThemeData(
                            hintColor: Colors.transparent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Location",
                                hintStyle: TextStyle(color: Colors.black26),
                                icon: Icon(Icons.location_on),
                              ),
                            ),
                          ),
                        ),
                      ),
                      line,
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          "Check in Date",
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "Gotik",
                              fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 20.0, right: 20.0),
                        child: Theme(
                          data: ThemeData(
                            hintColor: Colors.transparent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "date",
                                hintStyle: TextStyle(color: Colors.black26),
                                icon: Icon(Icons.date_range),
                              ),
                            ),
                          ),
                        ),
                      ),
                      line,
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          "Duration of Stay",
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "Gotik",
                              fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 20.0, right: 20.0),
                        child: Theme(
                          data: ThemeData(
                            hintColor: Colors.transparent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "duration",
                                hintStyle: TextStyle(
                                    color: Colors.black26, fontSize: 14.5),
                                icon: Icon(Icons.av_timer),
                              ),
                            ),
                          ),
                        ),
                      ),
                      line,
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          "Number of Guests and Rooms",
                          style: TextStyle(
                              color: Colors.black54,
                              fontFamily: "Gotik",
                              fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 20.0, right: 20.0),
                        child: Theme(
                          data: ThemeData(
                            hintColor: Colors.transparent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Check your date and time",
                                hintStyle: TextStyle(
                                    color: Colors.black26, fontSize: 14.5),
                                icon: Icon(Icons.people_outline),
                              ),
                            ),
                          ),
                        ),
                      ),
                      line,
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                height: 69.0,
                                width: mediaQueryData.size.width / 2.4,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        right:
                                            BorderSide(color: Colors.black12))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Filter",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: "Gotik",
                                          fontSize: 16.0),
                                    ),
                                    Theme(
                                      data: ThemeData(
                                        hintColor: Colors.transparent,
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Filter",
                                          hintStyle: TextStyle(
                                              color: Colors.black26,
                                              fontSize: 14.5),
                                          icon: Icon(Icons.filter_list),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(PageRouteBuilder(
                                      pageBuilder: (_, __, ___) => maps()));
                                },
                                child: Container(
                                  height: 69.0,
                                  width: mediaQueryData.size.width / 2.6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Maps",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontFamily: "Gotik",
                                            fontSize: 16.0),
                                      ),
                                      SizedBox(
                                        height: 14.0,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.map,
                                            color: Colors.black38,
                                          ),
                                          SizedBox(
                                            width: 15.0,
                                          ),
                                          Text(
                                            "Maps",
                                            style: TextStyle(
                                                color: Colors.black26),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      line,
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 21.0),
                          child: Container(
                            height: 51.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0))),
                            child: Center(
                              child: Text(
                                "Search",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Gotik",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.0),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
