import 'package:flutter/material.dart';

class profileUser extends StatefulWidget {
  profileUser({Key key}) : super(key: key);

  @override
  _profileUserState createState() => _profileUserState();
}

class _profileUserState extends State<profileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 280.0,
                  decoration: BoxDecoration(
                      color: Color(0xFF72A065),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0, left: 20.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Center(
                    child: Container(
                      height: 250.0,
                      width: 310.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          boxShadow: [
                            BoxShadow(color: Colors.black12.withOpacity(0.1)),
                          ]),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                              height: 100.0,
                              width: 100.0,
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
                                        color: Colors.black12.withOpacity(0.2),
                                        blurRadius: 10.0,
                                        spreadRadius: 2.0)
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "Alex Nourin",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w700,
                                fontSize: 20.0),
                          ),
                          Text(
                            "Alexnourin12@gmai.com",
                            style: TextStyle(
                                color: Colors.black38,
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w300,
                                fontSize: 16.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                        backgroundColor:
                                            Color(0xFF72A065).withOpacity(0.6),
                                        child: Icon(
                                          Icons.photo,
                                          color: Colors.white,
                                          size: 18.0,
                                        )),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "154",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "Sofia",
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.0),
                                          ),
                                          Text(
                                            "Photo",
                                            style: TextStyle(
                                                color: Colors.black45,
                                                fontFamily: "Sofia",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16.0),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                        backgroundColor:
                                            Color(0xFF72A065).withOpacity(0.6),
                                        child: Icon(
                                          Icons.thumb_up,
                                          color: Colors.white,
                                          size: 18.0,
                                        )),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "120 K",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: "Sofia",
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.0),
                                          ),
                                          Text(
                                            "Likes",
                                            style: TextStyle(
                                                color: Colors.black45,
                                                fontFamily: "Sofia",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16.0),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, top: 40.0, bottom: 10.0),
              child: Text(
                "Start Sharing Your Thought",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0),
              ),
            ),
            _card(Icons.hotel, "Hotel"),
            _card(Icons.local_dining, "Eats"),
            _card(Icons.directions_run, "Experience"),
            _card(Icons.directions_car, "Car Rental"),
            _card(Icons.directions_bus, "Bus"),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }

  ///
  /// Card for crypto list
  ///
  Widget _card(IconData _icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: InkWell(
        onTap: () {
          // Navigator.of(context).push(PageRouteBuilder(
          //     pageBuilder: (_, __, ___) => T1_wallet_detail()));
        },
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 20.0, top: 0.0),
              child: Container(
                height: 55.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(70.0)),
                    color: Colors.white),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80.0),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w400,
                            fontSize: 15.5),
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 55.0,
                  width: 55.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        tileMode: TileMode.repeated,
                        colors: [
                          Color(0xFF72A065),
                          Color(0xFF72A065).withOpacity(0.7)
                        ]),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child: Center(
                    child: Icon(
                      _icon,
                      color: Colors.white,
                      size: 26.0,
                    ),
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
