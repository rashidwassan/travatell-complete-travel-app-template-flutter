import 'package:flutter/material.dart';

class inboxAppbar extends StatefulWidget {
  inboxAppbar({Key key}) : super(key: key);

  @override
  _inboxAppbarState createState() => _inboxAppbarState();
}

class _inboxAppbarState extends State<inboxAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Inbox",
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
            Padding(padding: EdgeInsets.only(top: 130.0)),
            Image.asset(
              "assets/image/illustration/messageIlustration.png",
              height: 250.0,
              fit: BoxFit.cover,
            ),
            Padding(padding: EdgeInsets.only(bottom: 10.0)),
            Text(
              "Not Have inbox",
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
