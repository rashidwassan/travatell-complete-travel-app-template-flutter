import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:trevatell_template/UI/B1_Home/Hotel/Hotel_Detail_Concept_1/reviewDetail1.dart';
import 'package:trevatell_template/UI/B1_Home/Hotel/Hotel_Detail_Concept_2/maps.dart';
import 'gallery.dart';

class hotelDetail extends StatefulWidget {
  String image, title, price, location, id;
  hotelDetail({this.image, this.title, this.price, this.location, this.id});

  @override
  _hotelDetailState createState() => _hotelDetailState();
}

class _hotelDetailState extends State<hotelDetail> {
  @override
  double rating = 3.5;
  final Set<Marker> _markers = {};
  final LatLng _currentPosition = LatLng(40.7078523, -74.008981);

  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId("40.7078523, -74.008981"),
        position: _currentPosition,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    var _icon = Container(
      height: 105.0,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: _infoCircle("assets/image/icon/wifi.png", "Free Wifi")),
            Padding(
                padding: const EdgeInsets.only(right: 0.0),
                child: _infoCircle("assets/image/icon/food.png", "Food")),
            Padding(
                padding: const EdgeInsets.only(right: 0.0),
                child: _infoCircle("assets/image/icon/clean.png", "Clean")),
            Padding(
                padding: const EdgeInsets.only(right: 0.0),
                child:
                    _infoCircle("assets/image/icon/monitor.png", "Television")),
            Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child:
                    _infoCircle("assets/image/icon/swimming.png", "Swimming")),
          ],
        ),
      ),
    );

    var _desc = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
          child: Text(
            "About",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 0.0, left: 20.0, right: 20.0, bottom: 50.0),
          child: Text(
            "Spend a unforgettable holiday in the enchanting surroundings of the town of Cisternino (reachable from the near airports of Bari and Brindisi). \n\nTrullo Edera offers a heaven of peace and tranquillity, set in an elevated position with a stunning view. It's the perfect place if you like nature. You can stay under an olive tree reading a good book, you can have a walk in the small country streets or go to the nearest beaches.",
            style: TextStyle(
                fontFamily: "Sofia",
                color: Colors.black54,
                fontSize: 16.0,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );

    var _location = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 0.0, left: 20.0, right: 20.0, bottom: 20.0),
          child: Text(
            "Location",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.justify,
          ),
        ),
        Stack(
          children: <Widget>[
            Container(
              height: 190.0,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: LatLng(40.7078523, -74.008981),
                  zoom: 13.0,
                ),
                markers: _markers,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 135.0, right: 60.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        PageRouteBuilder(pageBuilder: (_, __, ___) => maps()));
                  },
                  child: Container(
                    height: 35.0,
                    width: 95.0,
                    decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.5),
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    child: Center(
                      child: Text("See Map",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Sofia")),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );

    var _gallery = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 70.0, left: 20.0, right: 20.0, bottom: 10.0),
          child: Text(
            "Gallery",
            style: TextStyle(
                fontFamily: "Sofia",
                fontSize: 20.0,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.justify,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: _width / 3,
                  width: _width / 3.1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/image/room/room1.jpg",
                          ),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Container(
                    height: _width / 3,
                    width: _width / 3.05,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/image/room/room2.jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Container(
                  height: _width / 3,
                  width: _width / 3.1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/image/room/room3.jpg",
                          ),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  height: _width / 3,
                  width: _width / 3.1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/image/room/room4.jpg",
                          ),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    height: _width / 3,
                    width: _width / 3.05,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/image/room/room5.jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Container(
                  height: _width / 3,
                  width: _width / 3.1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/image/room/room6.jpg",
                          ),
                          fit: BoxFit.cover)),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new gallery()));
                    },
                    child: Container(
                      color: Colors.black54,
                      child: Center(
                        child: Text("See More",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Sofia",
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );

    var _ratting = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            width: 600.0,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Color(0xFF656565).withOpacity(0.15),
                blurRadius: 1.0,
                spreadRadius: 0.2,
              )
            ]),
            child: Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Reviews",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 15.0, bottom: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              child: Padding(
                                  padding: EdgeInsets.only(top: 2.0),
                                  child: Text(
                                    "View All",
                                    style: TextStyle(
                                        color: Colors.indigoAccent,
                                        fontSize: 14.0),
                                  )),
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                    pageBuilder: (_, __, ___) =>
                                        reviewDetail1()));
                              },
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 15.0, top: 2.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 18.0,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            StarRating(
                              size: 25.0,
                              starCount: 5,
                              rating: 4.0,
                              color: Colors.yellow,
                            ),
                            SizedBox(width: 5.0),
                            Text("8 Reviews")
                          ]),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 0.0, right: 20.0, top: 15.0, bottom: 7.0),
                    child: _line(),
                  ),
                  _buildRating("18 Nov 2018",
                      "Item Delivered in good condition. I will recommended to other buyer.",
                      (rating) {
                    setState(() {
                      this.rating = rating;
                    });
                  }, "assets/image/profile/profile1.jpg"),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 0.0, right: 20.0, top: 15.0, bottom: 7.0),
                    child: _line(),
                  ),
                  _buildRating("18 Nov 2018",
                      "Item Delivered in good condition. I will recommended to other buyer.",
                      (rating) {
                    setState(() {
                      this.rating = rating;
                    });
                  }, "assets/image/profile/profile2.jpg"),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 0.0, right: 20.0, top: 15.0, bottom: 7.0),
                    child: _line(),
                  ),
                  _buildRating("18 Nov 2018",
                      "Item Delivered in good condition. I will recommended to other buyer.",
                      (rating) {
                    setState(() {
                      this.rating = rating;
                    });
                  }, "assets/image/profile/profile3.jpg"),
                  Padding(padding: EdgeInsets.only(bottom: 20.0)),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    var _relatedPostVar = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Related Post",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300),
                ),
              ]),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              _relatedPost("assets/image/room/room7.jpg", "The Cheeses Guide",
                  "87 Botsford", "4,3"),
              _relatedPost("assets/image/room/room8.jpg", "Garage Bar Seafood",
                  "Gilison London", "4,1"),
              _relatedPost("assets/image/room/room9.jpg",
                  "Spagheti Kilimanjaro", "Netherland", "4,2"),
              _relatedPost("assets/image/room/room10.jpg", "Gangtok Vegetable",
                  "Nepal", "4,7"),
              _relatedPost("assets/image/room/room11.jpg", "Soup Caikaki",
                  "Orlando", "4,5"),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  gradient: LinearGradient(
                      colors: [
                        const Color(0xFF8F73F2),
                        Colors.deepPurpleAccent,
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp)),
              child: Center(
                child: Text(
                  "Book Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.0,
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            SliverPersistentHeader(
              /// Create Appbar
              delegate: MySliverAppBar(
                  expandedHeight: _height - 30.0,
                  img: widget.image,
                  id: widget.id,
                  title: widget.title,
                  price: widget.price,
                  location: widget.location),
              pinned: true,
            ),

            /// Create body
            SliverToBoxAdapter(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  /// For icon row
                  _icon,

                  /// Desc
                  _desc,

                  /// Location
                  _location,

                  /// Gallery
                  _gallery,

                  /// Ratting
                  _ratting,

                  ///Related Post
                  _relatedPostVar,
                ])),
          ],
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  String img, id, title, price, location;

  MySliverAppBar(
      {@required this.expandedHeight,
      this.img,
      this.id,
      this.title,
      this.price,
      this.location});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.clip,
      children: [
        Container(
          height: 50.0,
          width: double.infinity,
          color: Colors.white,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Trevatel",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Gotik",
              fontWeight: FontWeight.w700,
              fontSize: (expandedHeight / 40) - (shrinkOffset / 40) + 18,
            ),
          ),
        ),
        Opacity(
          opacity: (1 - shrinkOffset / expandedHeight),
          child: Hero(
            tag: 'hero-tag-${id}',
            child: new DecoratedBox(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage(img),
                ),
                shape: BoxShape.rectangle,
              ),
              child: Container(
                margin: EdgeInsets.only(top: 130.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(0.0, 1.0),
                    stops: [0.0, 1.0],
                    colors: <Color>[
                      Color(0x00FFFFFF),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 30,
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.black87.withOpacity(0.65),
                          fontSize: 30.5,
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w700),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 14.0,
                        color: Colors.black26,
                      ),
                      Text(
                        "Wembley, London",
                        style: TextStyle(
                            color: Colors.black26,
                            fontSize: 14.5,
                            fontFamily: "Popins",
                            fontWeight: FontWeight.w800),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 10.0, bottom: 10.0),
                  child: Container(
                    child: Text(
                      price,
                      style: TextStyle(
                          color: Color(0xFF8F73F2),
                          fontSize: 25.5,
                          fontFamily: "Popins",
                          fontWeight: FontWeight.w800),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Container(
                          height: 35.0,
                          width: 35.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                            color: Colors.white70,
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          )),
                    ))),
            SizedBox(
              width: 36.0,
            )
          ],
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

Widget _photo(String image) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 110.0,
          width: 140.0,
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
      ],
    ),
  );
}

Widget _relatedPost(String image, title, location, ratting) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 110.0,
          width: 180.0,
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

            // Text("(233 Rating)",style: TextStyle(fontWeight: FontWeight.w500,fontFamily: "Sofia",fontSize: 11.0,color: Colors.black45),),
            SizedBox(
              width: 35.0,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _infoCircle(String image, title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
          height: 45.0,
          width: 45.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: Color(0xFFF0E5FB)),
          child: Center(
            child: Image.asset(
              image,
              height: 22.0,
              color: Colors.deepPurple,
            ),
          )),
      Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                  fontSize: 11.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      )
    ],
  );
}

Widget _line() {
  return Container(
    height: 0.9,
    width: double.infinity,
    color: Colors.black12,
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
      style: TextStyle(fontFamily: "Sofia", fontWeight: FontWeight.w300),
    ),
  );
}
