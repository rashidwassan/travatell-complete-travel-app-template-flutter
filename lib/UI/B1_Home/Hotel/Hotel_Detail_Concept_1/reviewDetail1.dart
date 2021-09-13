import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:trevatell_template/Library/Expanded/ExpandedDetailRatting.dart';
import 'package:trevatell_template/Library/Expanded/ExpandedDetailReviews.dart';
import 'package:trevatell_template/Library/SupportingLibrary/Ratting/Rating.dart';

class reviewDetail1 extends StatefulWidget {
  reviewDetail1({Key key}) : super(key: key);

  @override
  _reviewDetail1State createState() => _reviewDetail1State();
}

class _reviewDetail1State extends State<reviewDetail1> {
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
    var _appBar = AppBar(
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
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar,
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
                            ratingbar(
                              size: 25.0,
                              starCount: 5,
                              color: Colors.yellow,
                            ),
                            SizedBox(width: 5.0),
                            Text('8 Reviews')
                          ]),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                ListTile(
                  leading: Container(
                    height: 45.0,
                    width: 45.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/image/profile/profile1.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(50.0))),
                  ),
                  title: Row(
                    children: <Widget>[
                      ratingbar(
                        size: 20.0,
                        starCount: starCount,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        "18 November 2019",
                        style: TextStyle(fontSize: 12.0),
                      )
                    ],
                  ),
                  subtitle: ExpansionTileReview(
                    title: Text(
                      "Item delivered in good condition. I will recommend to other buyer.",
                      style: _detailText,
                    ),
                    children: [
                      SizedBox(height: 10.0),
                      Text(
                        "Very Recommended item i love it very love it",
                        style: _detailText,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Item delivered in good condition. I will recommend to other buyer.",
                        style: _detailText,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                _buildRating("18 Nov 2018",
                    "Item delivered in good condition. I will recommend to other buyer.",
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "assets/image/profile/profile1.jpg"),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                _buildRating("18 Nov 2018",
                    "Item delivered in good condition. I will recommend to other buyer.",
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "assets/image/profile/profile3.jpg"),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                _buildRating("18 Nov 2018",
                    "Item delivered in good condition. I will recommend to other buyer.",
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "assets/image/profile/profile4.jpg"),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                _buildRating("18 Nov 2018",
                    "Item delivered in good condition. I will recommend to other buyer.",
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "assets/image/profile/profile5.jpg"),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                  child: _line(),
                ),
                _buildRating("18 Nov 2018",
                    "Item delivered in good condition. I will recommend to other buyer.",
                    (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                }, "assets/image/profile/profile6.jpg"),
                SizedBox(
                  height: 10.0,
                ),
                _line(),
                Column(
                  children: <Widget>[
                    ExpansionTileCustomRatting(
                      title: _buildRating("18 Nov 2018",
                          "Item delivered in good condition. I will recommend to other buyer.",
                          (rating) {
                        setState(() {
                          this.rating = rating;
                        });
                      }, "assets/image/profile/profile1.jpg"),
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("18 Nov 2018",
                            "Item delivered in good condition. I will recommend to other buyer.",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "assets/image/profile/profile1.jpg"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("18 Nov 2018",
                            "Item delivered in good condition. I will recommend to other buyer.",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "assets/image/profile/profile1.jpg"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("18 Nov 2018",
                            "Item delivered in good condition. I will recommend to other buyer.",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "assets/image/profile/profile1.jpg"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("18 Nov 2018",
                            "Item delivered in good condition. I will recommend to other buyer.",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "assets/image/profile/profile1.jpg"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("18 Nov 2018",
                            "Item delivered in good condition. I will recommend to other buyer.",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "assets/image/profile/profile1.jpg"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("18 Nov 2018",
                            "Item delivered in good condition. I will recommend to other buyer.",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "assets/image/profile/profile1.jpg"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("18 Nov 2018",
                            "Item delivered in good condition. I will recommend to other buyer.",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "assets/image/profile/profile1.jpg"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("18 Nov 2018",
                            "Item delivered in good condition. I will recommend to other buyer.",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "assets/image/profile/profile1.jpg"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("18 Nov 2018",
                            "Item delivered in good condition. I will recommend to other buyer.",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "assets/image/profile/profile1.jpg"),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 15.0, bottom: 7.0),
                          child: _line(),
                        ),
                        _buildRating("18 Nov 2018",
                            "Item delivered in good condition. I will recommend to other buyer.",
                            (rating) {
                          setState(() {
                            this.rating = rating;
                          });
                        }, "assets/image/profile/profile1.jpg"),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(bottom: 40.0)),
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
