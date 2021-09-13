import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:trevatell_template/Library/Expanded/ExpandedDetailRatting.dart';
import 'package:trevatell_template/Library/Expanded/ExpandedDetailReviews.dart';
import 'package:trevatell_template/Library/SupportingLibrary/Ratting/Rating.dart';

class reviewDetail2 extends StatefulWidget {
  reviewDetail2({Key key}) : super(key: key);

  @override
  _reviewDetail2State createState() => _reviewDetail2State();
}

class _reviewDetail2State extends State<reviewDetail2> {
  @override
  double rating = 3.5;
  int starCount = 5;

  /// Custom Text for Detail title
  static var _detailText = TextStyle(
      fontFamily: "Gotik",
      color: Colors.black54,
      letterSpacing: 0.3,
      wordSpacing: 0.5);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Reviews"),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black87,
            )),
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                  child: Text(
                    "Review",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: "Popins",
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 20.0),
                  child: Row(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            StarRating(
                              size: 20.0,
                              rating: 3.5,
                              starCount: 5,
                              color: Colors.yellow,
                              onRatingChanged: (rating) {
                                setState(() {
                                  this.rating = rating;
                                });
                              },
                            ),
                            SizedBox(width: 5.0),
                            Text('5 Reviews')
                          ]),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                reviewList(
                  image: "assets/image/profile/pp1.jpg",
                  name: "Logan Lopi",
                  time: "19:20",
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                reviewList(
                  image: "assets/image/profile/pp2.jpg",
                  name: "Logan Lopi",
                  time: "19:20",
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                reviewList(
                  image: "assets/image/profile/pp3.jpg",
                  name: "Logan Lopi",
                  time: "19:20",
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                reviewList(
                  image: "assets/image/profile/pp4.jpg",
                  name: "Logan Lopi",
                  time: "19:20",
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                reviewList(
                  image: "assets/image/profile/pp5.jpg",
                  name: "Logan Lopi",
                  time: "19:20",
                ),
                SizedBox(
                  height: 10.0,
                ),
                _line(),
                Padding(padding: EdgeInsets.only(bottom: 10.0)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRating(
      String date, String details, Function changeRating, String image) {
    return ListTile(
      leading: Container(
        height: 45.0,
        width: 45.0,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
      ),
      title: Row(
        children: <Widget>[
          StarRating(
              size: 20.0,
              rating: 3.5,
              starCount: 5,
              color: Colors.yellow,
              onRatingChanged: changeRating),
          SizedBox(width: 8.0),
          Text(
            date,
            style: TextStyle(fontSize: 12.0),
          )
        ],
      ),
      subtitle: Text(
        details,
        style: _detailText,
      ),
    );
  }
}

Widget _line() {
  return Container(
    height: 0.9,
    width: double.infinity,
    color: Colors.black12,
  );
}

class reviewList extends StatelessWidget {
  String image, name, time;
  reviewList({this.image, this.name, this.time});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        //    Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___)=>new chatting(name: this.name,)));
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
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                              color: Colors.black12.withOpacity(0.05))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(name,
                              style: TextStyle(
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w700,
                                fontSize: 17.0,
                                color: Colors.black,
                              )),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                              width: _width - 140.0,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.5,
                                    color: Colors.black45),
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.justify,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
