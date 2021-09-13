import 'package:flutter/material.dart';
import 'package:trevatell_template/Library/SupportingLibrary/Animation/FadeAnimation.dart';
import 'package:trevatell_template/UI/B1_Home/Experience/experienceList.dart';
import 'package:trevatell_template/UI/B1_Home/Hotel/HotelList.dart';
import 'package:trevatell_template/UI/B1_Home/House/HouseList.dart';
import 'package:trevatell_template/UI/B1_Home/travel/travelList.dart';

class categoryProfile extends StatefulWidget {
  categoryProfile({Key key}) : super(key: key);

  @override
  _categoryProfileState createState() => _categoryProfileState();
}

class _categoryProfileState extends State<categoryProfile> {
  @override
  Widget build(BuildContext context) {
/// Component appbar
    var _appbar = AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0.0,
      centerTitle: true,
      title: Text(
        "Category",
        style: TextStyle(
            fontFamily: "Sofia",
            fontSize: 25.0,
            color: Colors.black,
            fontWeight: FontWeight.w700),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,

      /// Calling variable appbar
      appBar: _appbar,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),

            InkWell(
                onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => new hotelList(),
              transitionDuration: Duration(milliseconds: 600),
              transitionsBuilder:
                  (_, Animation<double> animation, __, Widget child) {
                return Opacity(
                  opacity: animation.value,
                  child: child,
                );
              }));
                },
                child: FadeAnimation(
                                  0.7, itemCard(
                    image: "assets/image/homeImage/hotel.png",
                    title: "Hotel",
                  ),
                )),

            InkWell(
                onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => new houseList(nameAppbar: "House",),
              transitionDuration: Duration(milliseconds: 600),
              transitionsBuilder:
                  (_, Animation<double> animation, __, Widget child) {
                return Opacity(
                  opacity: animation.value,
                  child: child,
                );
              }));
                },
                child: FadeAnimation(
                                  1.3, itemCard(
                    image: "assets/image/homeImage/home.png",
                    title: "House",
                  ),
                )),
            InkWell(
                onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => new experienceList(),
              transitionDuration: Duration(milliseconds: 600),
              transitionsBuilder:
                  (_, Animation<double> animation, __, Widget child) {
                return Opacity(
                  opacity: animation.value,
                  child: child,
                );
              }));
                },
                child: FadeAnimation(
                                2.0, itemCard(
                    image: "assets/image/homeImage/experience.png",
                    title: "Experience",
                  ),
                )),
     
            InkWell(
                onTap: () {
                 Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (_, __, ___) => new travelList(),
              transitionDuration: Duration(milliseconds: 600),
              transitionsBuilder:
                  (_, Animation<double> animation, __, Widget child) {
                return Opacity(
                  opacity: animation.value,
                  child: child,
                );
              }));
                },
                child: FadeAnimation(
                                  2.8, itemCard(
                    image: "assets/image/homeImage/travel.png",
                    title: "Travel",
                  ),
                )),
                SizedBox(height: 30.0,)
          ],
        ),
      ),
    );
  }
}


///
/// Create item card
///
class itemCard extends StatelessWidget {
  String image, title;
  itemCard({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0, bottom: 5.0),
      child: Container(
        height: 140.0,
        width: 400.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Material(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFABABAB).withOpacity(0.7),
                  blurRadius: 4.0,
                  spreadRadius: 3.0,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.black12.withOpacity(0.1),
              ),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    shadows: [
                      BoxShadow(color: Colors.black.withOpacity(0.7),blurRadius: 10.0,spreadRadius: 2.0)
                    ],
                    color: Colors.white,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w800,
                    fontSize: 39.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
