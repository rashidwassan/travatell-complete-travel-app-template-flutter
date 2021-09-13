import 'package:flutter/material.dart';

import 'Chatting/chatting.dart';

class travelGuide extends StatefulWidget {
  String title;
  travelGuide({this.title});

  @override
  _travelGuideState createState() => _travelGuideState();
}

class _travelGuideState extends State<travelGuide> {
  @override
  Widget build(BuildContext context) {
    var _item = Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Container(
        height: 180.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(
              width: 20.0,
            ),
            card(
              profile: "assets/image/profile/profile1.jpg",
            ),
            card(
              profile: "assets/image/profile/profile6.jpg",
            ),
            card(
              profile: "assets/image/profile/profile3.jpg",
            ),
            card(
              profile: "assets/image/profile/profile4.jpg",
            ),
            card(
              profile: "assets/image/profile/profile5.jpg",
            ),
            card(
              profile: "assets/image/profile/profile2.jpg",
            ),
            Padding(padding: EdgeInsets.only(right: 10.0)),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(
              fontFamily: "Sofia",
              fontWeight: FontWeight.w800,
              fontSize: 18.5,
              wordSpacing: 0.1),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _item,
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 15.0),
              child: Text("Recent Conversations",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w300,
                      fontSize: 17.5,
                      color: Colors.black45)),
            ),
            messageList(
              image: "assets/image/profile/pp1.jpg",
              name: "Abella Ayob",
              time: "21:45",
            ),
            messageList(
              image: "assets/image/profile/pp2.jpg",
              name: "Logan Lopi",
              time: "19:20",
            ),
            messageList(
              image: "assets/image/profile/pp3.jpg",
              name: "Sophia Adriana",
              time: "18:10",
            ),
            messageList(
              image: "assets/image/profile/pp4.jpg",
              name: "Stephanie",
              time: "17:40",
            ),
            messageList(
              image: "assets/image/profile/pp5.jpg",
              name: "Caroline Lopez",
              time: "16:30",
            ),
            messageList(
              image: "assets/image/profile/pp6.jpg",
              name: "Stella Violet",
              time: "15:24",
            ),
          ],
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  String profile;
  card({this.profile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 280.0,
        width: 109.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
                blurRadius: 3.0,
                color: Colors.black12.withOpacity(0.1),
                spreadRadius: 1.0)
          ],
          image: DecorationImage(image: AssetImage(profile), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class messageList extends StatelessWidget {
  String image, name, time;
  messageList({this.image, this.name, this.time});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (_, __, ___) => new chatting(
                  name: this.name,
                )));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, bottom: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover),
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(50.0))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(name,
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w600,
                              fontSize: 15.5,
                              color: Colors.black)),
                      Text("Great i'ill join you tommorow",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w400,
                              fontSize: 13.5,
                              color: Colors.black45))
                    ],
                  ),
                ),
              ],
            ),
            Text(time,
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w300,
                    fontSize: 13.5,
                    color: Colors.black45)),
            SizedBox(
              width: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
