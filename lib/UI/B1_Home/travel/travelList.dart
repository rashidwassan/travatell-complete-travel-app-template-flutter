import 'package:flutter/material.dart';
import 'package:trevatell_template/DataSample/HotelListData.dart';
import 'package:trevatell_template/Library/SupportingLibrary/Ratting/Rating.dart';
import 'package:trevatell_template/UI/B1_Home/B1_Home_Screen/B1_Home_Screen.dart';
import 'package:trevatell_template/UI/B1_Home/B1_Home_Screen/Search.dart';

class travelList extends StatefulWidget {
  travelList({Key key}) : super(key: key);

  @override
  _travelListState createState() => _travelListState();
}

class _travelListState extends State<travelList> {
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

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: InkWell(
          onTap: () {
            Navigator.of(context).push(
                PageRouteBuilder(pageBuilder: (_, __, ___) => new search()));
          },
          child: Container(
            height: 37.0,
            width: 222.0,
            decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.05),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                shape: BoxShape.rectangle),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 17.0)),
                Icon(
                  Icons.search,
                  color: Colors.black38,
                ),
                Padding(
                    padding: EdgeInsets.only(
                  left: 8.0,
                )),
                Padding(
                  padding: EdgeInsets.only(top: 3.0),
                  child: Text(
                    "Search",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.black26,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.0,
                        fontSize: 16.4),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black38,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 9.0),
              height: 168.0,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 15.0)),
                        Container(
                          height: 50.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/banner/banner1Travel.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(padding: EdgeInsets.only(right: 10.0)),
                        Container(
                          height: 50.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/banner/banner2Travel.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(padding: EdgeInsets.only(right: 10.0)),
                        Container(
                          height: 50.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/banner/banner3Travel.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(padding: EdgeInsets.only(right: 10.0)),
                        Container(
                          height: 50.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/banner/banner4Travel.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(padding: EdgeInsets.only(right: 10.0)),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            Container(
              height: 30.0,
              width: double.infinity,
              color: Colors.black12.withOpacity(0.012),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: Text(
                "Category",
                style: TextStyle(
                    fontSize: 17.5,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Gotik'),
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

            SizedBox(
              height: 30.0,
            ),

            Container(
              height: 30.0,
              width: double.infinity,
              color: Colors.black12.withOpacity(0.012),
            ),

            Container(
              padding: EdgeInsets.only(top: 20.0),
              height: 330.0,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, left: 20.0),
                    child: Text(
                      "Destination Location",
                      style: TextStyle(
                          fontSize: 17.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gotik'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Famous tourist destinations that must be explored",
                      style: TextStyle(
                          fontSize: 14.5,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Sofia'),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 20.0)),
                        cardSuggeted(
                          img:
                              'assets/image/destinationPopuler/destination1.png',
                          txtTitle: 'Rodin',
                          txtSize: 50.0,
                          navigatorOntap: null,
                        ),
                        cardSuggeted(
                          img:
                              'assets/image/destinationPopuler/destination3.jpg',
                          txtTitle: 'Eferst',
                          txtSize: 50.0,
                          navigatorOntap: null,
                        ),
                        cardSuggeted(
                          img:
                              'assets/image/destinationPopuler/destination4.jpg',
                          txtTitle: 'Snow',
                          txtSize: 50.0,
                          navigatorOntap: null,
                        ),
                        cardSuggeted(
                          img:
                              'assets/image/destinationPopuler/destination5.jpg',
                          txtTitle: 'Spain',
                          txtSize: 40.0,
                          navigatorOntap: null,
                        ),
                        Padding(padding: EdgeInsets.only(right: 10.0)),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 330.0,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, left: 20.0),
                    child: Text(
                      "Where To Go Next?",
                      style: TextStyle(
                          fontSize: 17.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gotik'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "For those of you who are looking for adventure",
                      style: TextStyle(
                          fontSize: 14.5,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Sofia'),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 20.0)),
                        cardSuggeted(
                          img:
                              'assets/image/destinationPopuler/destination6.jpg',
                          txtTitle: 'Mountain',
                          txtSize: 30.0,
                          navigatorOntap: null,
                        ),
                        cardSuggeted(
                          img:
                              'assets/image/destinationPopuler/destination7.jpg',
                          txtTitle: 'Czech',
                          txtSize: 45.0,
                          navigatorOntap: null,
                        ),
                        cardSuggeted(
                          img:
                              'assets/image/destinationPopuler/destination8.jpg',
                          txtTitle: 'Bromo',
                          txtSize: 50.0,
                          navigatorOntap: null,
                        ),
                        cardSuggeted(
                          img:
                              'assets/image/destinationPopuler/destination9.jpg',
                          txtTitle: 'Telluride',
                          txtSize: 30.0,
                          navigatorOntap: null,
                        ),
                        Padding(padding: EdgeInsets.only(right: 10.0)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, left: 20.0),
              child: Text(
                "Recommendation For You",
                style: TextStyle(
                    fontSize: 17.5,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Gotik'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "The best choice for you to be interested in",
                style: TextStyle(
                    fontSize: 14.5,
                    color: Colors.black54,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Sofia'),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) =>
                  card(hotelDataDummy[index]),
              itemCount: hotelDataDummy.length,
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
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

  card(this.hotelData);
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
                height: 25.2,
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
                height: 25.2,
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
                height: 25.2,
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
                height: 25.2,
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

class cardSuggeted extends StatelessWidget {
  @override
  String img, txtTitle, txtHeader, txtDesc;
  double txtSize;
  GestureTapCallback navigatorOntap;
  cardSuggeted(
      {this.img,
      this.txtTitle,
      this.txtSize,
      this.navigatorOntap,
      this.txtHeader,
      this.txtDesc});
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 4.0, right: 12.0, top: 8.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: navigatorOntap,
            child: Container(
              width: 140.0,
              height: 195.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF656565).withOpacity(0.15),
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
                    )
                  ]),
              child: Center(
                child: Text(
                  txtTitle,
                  style: TextStyle(
                      fontFamily: 'Amira',
                      color: Colors.white,
                      fontSize: txtSize,
                      letterSpacing: 2.0,
                      shadows: [
                        Shadow(
                          color: Colors.black12.withOpacity(0.9),
                          blurRadius: 2.0,
                        )
                      ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class cardList extends StatelessWidget {
  @override
  String img, txtTitle, txtHeader, txtDesc;
  double txtSize;
  GestureTapCallback navigatorOntap;
  cardList(
      {this.img,
      this.txtTitle,
      this.txtSize,
      this.navigatorOntap,
      this.txtHeader,
      this.txtDesc});
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 4.0, right: 12.0, top: 8.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: navigatorOntap,
            child: Container(
              width: 265.0,
              height: 155.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF656565).withOpacity(0.15),
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                    )
                  ]),
              child: Center(
                child: Text(
                  txtTitle,
                  style: TextStyle(
                      fontFamily: 'Amira',
                      color: Colors.white,
                      fontSize: txtSize,
                      letterSpacing: 2.0,
                      shadows: [
                        Shadow(
                          color: Colors.black12.withOpacity(0.1),
                          blurRadius: 2.0,
                        )
                      ]),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 10.0),
            child: Text(
              txtHeader,
              style: TextStyle(
                fontFamily: "Sans",
                fontSize: 16.0,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 5.0),
            child: Container(
                width: 270.0,
                child: Text(
                  txtDesc,
                  overflow: TextOverflow.clip,
                  maxLines: 3,
                  style: TextStyle(
                    fontFamily: "Sans",
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black26,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
