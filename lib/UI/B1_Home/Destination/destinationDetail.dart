import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:trevatell_template/DataSample/travelModelData.dart';
import 'package:trevatell_template/Library/SupportingLibrary/Ratting/Rating.dart';
import 'package:trevatell_template/UI/B1_Home/B1_Home_Screen/B1_Home_Screen.dart';

class destination extends StatefulWidget {
  String title;
  destination({Key key, this.title}) : super(key: key);

  @override
  _destinationState createState() => _destinationState();
}

class _destinationState extends State<destination> {
  @override
  Widget build(BuildContext context) {
    var onClickMenuIcon = () {
      Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (_, __, ___) => new Home(),
          transitionDuration: Duration(milliseconds: 750),

          /// Set animation with opacity
          transitionsBuilder:
              (_, Animation<double> animation, __, Widget child) {
            return Opacity(
              opacity: animation.value,
              child: child,
            );
          }));
    };

    var _appBar = PreferredSize(
      preferredSize: Size.fromHeight(45.0),
      child: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(widget.title, style: TextStyle(fontFamily: "Sofia")),
      ),
    );

    var _slideImage = Container(
      height: 222.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        dotColor: Colors.white.withOpacity(0.8),
        dotSize: 5.5,
        dotSpacing: 16.0,
        dotBgColor: Colors.transparent,
        showIndicator: true,
        overlayShadow: true,
        overlayShadowColors: Colors.white.withOpacity(0.1),
        overlayShadowSize: 0.9,
        images: [
          AssetImage("assets/image/banner/banner4.jpg"),
          AssetImage("assets/image/banner/banner6.jpg"),
          AssetImage("assets/image/banner/banner10.jpg"),
          AssetImage("assets/image/banner/banner12.jpg"),
        ],
      ),
    );

    var _description = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Text(
            widget.title,
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w700,
                fontSize: 20.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 10.0, bottom: 30.0),
          child: Container(
              width: MediaQuery.of(context).size.width - 10.0,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w300,
                    fontSize: 14.5,
                    color: Colors.black45),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.justify,
              )),
        ),
      ],
    );

    var _category = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
          child: Text(
            "Category",
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w700,
                fontSize: 20.0),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 30.0)),

        /// Get class CategoryIconValue
        CategoryIconValue(
          tap1: onClickMenuIcon,
          icon1: "assets/image/icon/confetti.png",
          title1: "Attraction",
          tap2: onClickMenuIcon,
          icon2: "assets/image/icon/tour.png",
          title2: "Tour",
          tap3: onClickMenuIcon,
          icon3: "assets/image/icon/bag.png",
          title3: "Travel",
          tap4: onClickMenuIcon,
          icon4: "assets/image/icon/plant.png",
          title4: "Spa",
        ),
        Padding(padding: EdgeInsets.only(top: 23.0)),
        CategoryIconValue(
          icon1: "assets/image/icon/lamp.png",
          tap1: onClickMenuIcon,
          title1: "Courses",
          icon2: "assets/image/icon/sneaker.png",
          tap2: onClickMenuIcon,
          title2: "Sports",
          icon3: "assets/image/icon/playground.png",
          tap3: onClickMenuIcon,
          title3: "Played",
          icon4: "assets/image/icon/ticket.png",
          tap4: onClickMenuIcon,
          title4: "Cinema",
        ),
        Padding(padding: EdgeInsets.only(top: 43.0)),

        Container(
          height: 30.0,
          width: double.infinity,
          color: Colors.black12.withOpacity(0.03),
        ),
      ],
    );

    var _topDestination = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 30.0),
          child: Text(
            "Top Destination",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: 5.0),
        Container(
          height: 320.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              _card("assets/image/banner/banner7.jpg", "Ama Dablam ",
                  "Tanzania", "4,3"),
              _card("assets/image/banner/banner8.jpg", "Table Mountain",
                  "Africa", "4,1"),
              _card("assets/image/banner/banner13.jpg", "Mount Kilimanjaro",
                  "Nepal", "4,2"),
              _card("assets/image/banner/banner9.jpg", "Gangtok Mount", "Nepal",
                  "4,7"),
              _card("assets/image/banner/banner11.jpg", "Mount Papua",
                  "Indonesia", "4,5"),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
      ],
    );

    var _recommended = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Text(
            "Recommended",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: Container(
            child: ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemBuilder: (ctx, index) {
                return cardList(travelDataDummy[index]);
              },
              itemCount: travelDataDummy.length,
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );

    return Scaffold(
      appBar: _appBar,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ///Slider image in top
            _slideImage,

            SizedBox(
              height: 20.0,
            ),

            /// Description
            _description,

            /// Category
            _category,

            /// Top Destination
            _topDestination,

            /// Recommended
            _recommended,
          ],
        ),
      ),
    );
  }
}

class cardList extends StatelessWidget {
  @override
  var _txtStyleTitle = TextStyle(
    color: Colors.black87,
    fontFamily: "Gotik",
    fontSize: 17.0,
    fontWeight: FontWeight.w800,
  );

  var _txtStyleSub = TextStyle(
    color: Colors.black26,
    fontFamily: "Gotik",
    fontSize: 12.5,
    fontWeight: FontWeight.w600,
  );

  travelListData hotelData;

  cardList(this.hotelData);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
      child: Container(
        height: 250.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12.withOpacity(0.1),
                  blurRadius: 3.0,
                  spreadRadius: 1.0)
            ]),
        child: Column(children: [
          Container(
            height: 165.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0)),
              image: DecorationImage(
                  image: AssetImage(hotelData.img), fit: BoxFit.cover),
            ),
            alignment: Alignment.topRight,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: 220.0,
                          child: Text(
                            hotelData.name,
                            style: _txtStyleTitle,
                            overflow: TextOverflow.ellipsis,
                          )),
                      Padding(padding: EdgeInsets.only(top: 5.0)),
                      Row(
                        children: <Widget>[
                          ratingbar(
                            starRating: hotelData.rating,
                            color: Colors.blueAccent,
                          ),
                          Padding(padding: EdgeInsets.only(left: 5.0)),
                          Text(
                            "(" + hotelData.rating.toString() + ")",
                            style: _txtStyleSub,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.9),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 16.0,
                              color: Colors.black26,
                            ),
                            Padding(padding: EdgeInsets.only(top: 3.0)),
                            Text(hotelData.location, style: _txtStyleSub)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 13.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "\$" + hotelData.price,
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Gotik"),
                      ),
                      Text("per night",
                          style: _txtStyleSub.copyWith(fontSize: 11.0))
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

Widget _card(String image, title, location, ratting) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 220.0,
          width: 160.0,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5.0,
                    color: Colors.black12.withOpacity(0.1),
                    spreadRadius: 2.0)
              ]),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: "Sofia",
              fontWeight: FontWeight.w600,
              fontSize: 17.0,
              color: Colors.black87),
        ),
        SizedBox(
          height: 2.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.location_on,
              size: 18.0,
              color: Colors.black12,
            ),
            Text(
              location,
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                  color: Colors.black26),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.star,
              size: 18.0,
              color: Colors.yellow,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text(
                ratting,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "Sofia",
                    fontSize: 13.0),
              ),
            ),
            SizedBox(
              width: 35.0,
            ),
            Container(
              height: 27.0,
              width: 82.0,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Center(
                child: Text("Discount 15%",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 10.0)),
              ),
            )
          ],
        ),
      ],
    ),
  );
}

class cardCountry extends StatelessWidget {
  Color colorTop, colorBottom;
  String image, title;
  cardCountry({this.colorTop, this.colorBottom, this.title, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 105.0,
            width: 105.0,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(blurRadius: 8.0, color: Colors.black12)],
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              gradient: LinearGradient(
                  colors: [colorTop, colorBottom],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    image,
                    height: 60,
                    color: Colors.white,
                  )),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Sofia",
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}

/// Component item Menu icon bellow a Description
class CategoryIconValue extends StatelessWidget {
  String icon1, icon2, icon3, icon4, title1, title2, title3, title4;
  GestureTapCallback tap1, tap2, tap3, tap4;

  CategoryIconValue(
      {this.icon1,
      this.tap1,
      this.icon2,
      this.tap2,
      this.icon3,
      this.tap3,
      this.icon4,
      this.tap4,
      this.title1,
      this.title2,
      this.title3,
      this.title4});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: tap1,
          child: Column(
            children: <Widget>[
              Image.asset(
                icon1,
                height: 30.2,
                fit: BoxFit.cover,
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Text(
                title1,
                style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 11.5,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: tap2,
          child: Column(
            children: <Widget>[
              Image.asset(
                icon2,
                height: 32.2,
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Text(
                title2,
                style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 11.5,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: tap3,
          child: Column(
            children: <Widget>[
              Image.asset(
                icon3,
                height: 32.2,
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Text(
                title3,
                style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 11.5,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: tap4,
          child: Column(
            children: <Widget>[
              Image.asset(
                icon4,
                height: 32.2,
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Text(
                title4,
                style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 11.5,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
