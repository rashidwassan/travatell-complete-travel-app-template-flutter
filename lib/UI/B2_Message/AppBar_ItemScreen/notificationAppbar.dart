import 'package:flutter/material.dart';

class notificationAppbar extends StatefulWidget {
  notificationAppbar({Key key}) : super(key: key);

  @override
  _notificationAppbarState createState() => _notificationAppbarState();
}

class _notificationAppbarState extends State<notificationAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22.0,
              letterSpacing: 2.0,
              color: Colors.black54,
              fontFamily: "Berlin"),
        ),
        iconTheme: IconThemeData(
          color: Colors.deepPurpleAccent,
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        width: 500.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 120.0)),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Image.asset(
                "assets/image/illustration/message.png",
                height: 250.0,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20.0)),
            Text(
              "Not Have Notification",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 21.5,
                  color: Colors.black54,
                  fontFamily: "Sofia"),
            ),
          ],
        ),
      ),
    );
  }
}
