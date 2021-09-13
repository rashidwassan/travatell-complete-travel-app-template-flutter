import 'package:flutter/material.dart';
import 'package:trevatell_template/UI/B2_Message/travelGuideMessage.dart';
import 'messageList.dart';

class message extends StatefulWidget {
  message({Key key}) : super(key: key);

  @override
  _messageState createState() => _messageState();
}

class _messageState extends State<message> {
  @override
  Widget build(BuildContext context) {
    var _item = Padding(
      padding: EdgeInsets.only(top: 90.0),
      child: Container(
        height: 360.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Stack(
                children: <Widget>[
                  Text(
                    "It's More Than A",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w800,
                        fontSize: 32.5,
                        wordSpacing: 0.1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Text(
                      "Message",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w800,
                          fontSize: 32.5,
                          wordSpacing: 0.1),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(
                    width: 20.0,
                  ),
                  card(
                    img: "assets/image/icon/logo4.png",
                    title: "Travel Guide",
                  ),
                  card(
                    img: "assets/image/icon/logo2.png",
                    title: "House Holder",
                  ),
                  card(
                    img: "assets/image/icon/logo3.png",
                    title: "Hottel",
                  ),
                  card(
                    img: "assets/image/icon/logo1.png",
                    title: "Place Holder",
                  ),
                  Padding(padding: EdgeInsets.only(right: 10.0)),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    var _illustration = Align(
      alignment: Alignment.bottomRight,
      child: Image.asset(
        "assets/image/illustration/social.png",
        height: 235.0,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                        padding: EdgeInsets.only(top: 35.0, left: 15.0),
                        child: Icon(
                          Icons.clear,
                          size: 30.0,
                        ))),
                _item,
                Align(alignment: Alignment.bottomRight, child: _illustration)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  String img, title;
  card({this.img, this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (_, __, ___) => new travelGuide(
                  title: this.title,
                )));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 170.0,
          width: 181.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              border: Border.all(
                color: Colors.black12,
              )),
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  img,
                  height: 30.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "Sofia",
                      fontSize: 17.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing text of and typesetting in industry. Lorem Ipsum has been the ",
                    style: TextStyle(
                        fontFamily: "Sofia", fontWeight: FontWeight.w300),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
