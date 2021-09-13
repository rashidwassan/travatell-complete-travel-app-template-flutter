import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trevatell_template/DataSample/HotelListData.dart';
import 'package:trevatell_template/Library/SupportingLibrary/Ratting/Rating.dart';
import 'package:shimmer/shimmer.dart';

class hotelList extends StatefulWidget {
  @override
  _hotelListState createState() => _hotelListState();
}

class _hotelListState extends State<hotelList> {
  @override
  static hotelListData hotelData;
  bool loadImage = true;
  bool colorIconCard = false;
  bool chosseCard = false;
  bool colorIconCard2 = true;

  var loadImageAnimation = Container(
      color: Colors.white,
      child: ListView.builder(
        itemBuilder: (ctx, index) => cardLoading(hotelDataDummy[index]),
        itemCount: hotelDataDummy.length,
      ));

  var imageNetwork = NetworkImage(
      "https://github.com/flutter/website/blob/master/src/_includes/code/layout/lakes/images/lake.jpg?raw=true");

  var imageLoaded = Container(
      color: Colors.white,
      child: ListView.builder(
        itemBuilder: (ctx, index) => cardList(hotelDataDummy[index]),
        itemCount: hotelDataDummy.length,
      ));

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        loadImage = false;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          chosseCard
              ? Padding(
                  padding: const EdgeInsets.only(top: 95.0),
                  child: Container(
                      color: Colors.white,
                      child: loadImage ? loadImageAnimation : cardGrid()))
              : Padding(
                  padding: const EdgeInsets.only(top: 95.0),
                  child: Container(
                      color: Colors.white,
                      child: loadImage ? loadImageAnimation : imageLoaded),
                ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              color: Colors.white,
              height: 130.0,
              child: Column(
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 13.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Hotel",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              fontSize: 35.0,
                              fontWeight: FontWeight.w800),
                        ),
                        Row(
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    if (colorIconCard == true) {
                                      colorIconCard = false;
                                      colorIconCard2 = true;
                                      chosseCard = false;
                                    } else {
                                      colorIconCard = true;
                                      colorIconCard2 = false;
                                      chosseCard = true;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.calendar_view_day,
                                  color: colorIconCard
                                      ? Colors.black12
                                      : Colors.deepPurpleAccent,
                                )),
                            SizedBox(
                              width: 14.0,
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    if (colorIconCard2 == true) {
                                      colorIconCard2 = false;
                                      colorIconCard = true;
                                      chosseCard = true;
                                    } else {
                                      colorIconCard2 = true;
                                      colorIconCard = false;
                                      chosseCard = false;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.dashboard,
                                  color: colorIconCard2
                                      ? Colors.black12
                                      : Colors.deepPurpleAccent,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class cardGrid extends StatelessWidget {
  const cardGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 0.0, bottom: 0.0),
      childAspectRatio: mediaQueryData.size.height / 1100,
      crossAxisSpacing: 0.0,
      mainAxisSpacing: 0.0,
      primary: false,
      children: List.generate(
        /// Get data in flashSaleItem.dart (ListItem folder)
        hotelDataDummy.length,
        (index) => itemGrid(hotelDataDummy[index]),
      ),
    );
  }
}

/// Component Card item in gridView after done loading image
class itemGrid extends StatelessWidget {
  hotelListData hotelData;
  itemGrid(this.hotelData);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12.withOpacity(0.1),
                      spreadRadius: 0.2,
                      blurRadius: 0.5)
                ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag: "hero-flashsale-${hotelData.id}",
                      child: Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(PageRouteBuilder(
                                opaque: false,
                                pageBuilder: (BuildContext context, _, __) {
                                  return new Material(
                                    color: Colors.black54,
                                    child: Container(
                                      padding: EdgeInsets.all(30.0),
                                      child: InkWell(
                                        child: Hero(
                                            tag:
                                                "hero-flashsale-${hotelData.id}",
                                            child: Image.asset(
                                              hotelData.img,
                                              width: 300.0,
                                              height: 400.0,
                                              alignment: Alignment.center,
                                              fit: BoxFit.contain,
                                            )),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  );
                                },
                                transitionDuration:
                                    Duration(milliseconds: 500)));
                          },
                          child: SizedBox(
                            child: Image.asset(
                              hotelData.img,
                              fit: BoxFit.cover,
                              height: 140.0,
                              width: mediaQueryData.size.width / 2.1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 8.0, right: 3.0, top: 15.0),
                      child: Container(
                        width: mediaQueryData.size.width / 2.7,
                        child: Text(
                          hotelData.name,
                          style: TextStyle(
                              fontSize: 14.5,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Sofia"),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Text("\$" + hotelData.price,
                          style: TextStyle(
                              fontSize: 15.5,
                              color: Colors.black54,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Sans")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Row(
                        children: <Widget>[
                          ratingbar(
                            starRating: hotelData.rating,
                            color: Colors.deepPurpleAccent,
                          ),
                          Padding(padding: EdgeInsets.only(left: 5.0)),
                          Text(
                            "(" + hotelData.rating.toString() + ")",
                            style: TextStyle(
                              color: Colors.black26,
                              fontFamily: "Gotik",
                              fontSize: 12.5,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 5.0, bottom: 15.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 11.0,
                            color: Colors.black38,
                          ),
                          Text(
                            hotelData.location,
                            style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Sans",
                                color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
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

  hotelListData hotelData;

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
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 10.0),
              child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.black12,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  )),
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
                            color: Colors.deepPurpleAccent,
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
                            color: Colors.deepPurpleAccent,
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

class cardLoading extends StatelessWidget {
  @override
  hotelListData data;
  cardLoading(this.data);
  final color = Colors.black38;
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
        child: Shimmer.fromColors(
          baseColor: color,
          highlightColor: Colors.white,
          child: Column(children: [
            Container(
              height: 165.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                child: CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.black12,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )),
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
                          height: 25.0,
                          color: Colors.black12,
                        ),
                        Padding(padding: EdgeInsets.only(top: 5.0)),
                        Container(
                          height: 15.0,
                          width: 100.0,
                          color: Colors.black12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.9),
                          child: Container(
                            height: 12.0,
                            width: 140.0,
                            color: Colors.black12,
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
                        Container(
                          height: 35.0,
                          width: 55.0,
                          color: Colors.black12,
                        ),
                        Padding(padding: EdgeInsets.only(top: 8.0)),
                        Container(
                          height: 10.0,
                          width: 55.0,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
