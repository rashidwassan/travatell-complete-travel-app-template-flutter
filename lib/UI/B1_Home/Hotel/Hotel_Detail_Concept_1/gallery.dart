import 'package:flutter/material.dart';

class gallery extends StatefulWidget {
  gallery({Key key}) : super(key: key);

  @override
  _galleryState createState() => _galleryState();
}

class _galleryState extends State<gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: PageView(
        controller: PageController(
          initialPage: 0,
        ),
        scrollDirection: Axis.horizontal,

        ///Enable physics property to provide your PageView with a
        ///custom scroll behaviour
        ///Here BouncingScrollPhysics will pull back the boundary
        ///item (first or last) if the user tries to scroll further.
        //physics: BouncingScrollPhysics(),
        pageSnapping: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/room/room1.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/room/room2.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/room/room3.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/room/room4.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/room/room5.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
