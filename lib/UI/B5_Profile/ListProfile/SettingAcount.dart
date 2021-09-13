import 'package:flutter/material.dart';

class settingAcount extends StatefulWidget {
  @override
  _settingAcountState createState() => _settingAcountState();
}

class _settingAcountState extends State<settingAcount> {
  static var _txtCustomHead = TextStyle(
    color: Colors.black54,
    fontSize: 17.0,
    fontWeight: FontWeight.w600,
    fontFamily: "Gotik",
  );

  static var _txtCustomSub = TextStyle(
    color: Colors.black38,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    fontFamily: "Gotik",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Setting Account",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: Colors.black54,
              fontFamily: "Gotik"),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF6991C7)),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              setting(
                head: "Account",
                sub1: "Address",
                sub2: "Telephone",
                sub3: "Email",
              ),
              setting(
                head: "Setting",
                sub1: "Order Notifications",
                sub2: "Discount Notifications",
                sub3: "Credit Card",
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Container(
                  height: 50.0,
                  width: 1000.0,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 13.0, left: 20.0, bottom: 15.0),
                    child: Text(
                      "Logout",
                      style: _txtCustomHead,
                    ),
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

class setting extends StatelessWidget {
  static var _txtCustomHead = TextStyle(
    color: Colors.black54,
    fontSize: 17.0,
    fontWeight: FontWeight.w600,
    fontFamily: "Gotik",
  );

  static var _txtCustomSub = TextStyle(
    color: Colors.black38,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    fontFamily: "Gotik",
  );

  String head, sub1, sub2, sub3;

  setting({this.head, this.sub1, this.sub2, this.sub3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        height: 235.0,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0, top: 15.0),
                child: Text(
                  head,
                  style: _txtCustomHead,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Divider(
                  color: Colors.black12,
                  height: 0.5,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        sub1,
                        style: _txtCustomSub,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black38,
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Divider(
                  color: Colors.black12,
                  height: 0.5,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        sub2,
                        style: _txtCustomSub,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black38,
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Divider(
                  color: Colors.black12,
                  height: 0.5,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        sub3,
                        style: _txtCustomSub,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black38,
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: Divider(
                  color: Colors.black12,
                  height: 0.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
