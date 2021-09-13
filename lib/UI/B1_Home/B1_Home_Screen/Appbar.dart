import 'package:flutter/material.dart';

import 'Search.dart';

class AppbarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          height: 159.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12.withOpacity(0.12),
                  spreadRadius: 1.5,
                  blurRadius: 5.0)
            ],
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 45.0, bottom: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text("Home",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontFamily: "Gotik",
                              fontSize: 28.0,
                              color: Colors.black54)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: InkWell(
                        child: Hero(
                          tag: 'hero-tag-profile',
                          child: Material(
                            child: CircleAvatar(
                              backgroundColor: Colors.black54,
                              radius: 19.0,
                              child: Image.asset(
                                  "assets/image/images/GirlProfile.png"),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: InkWell(
                  onTap: () => Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new search(),
                    transitionsBuilder:
                        (_, Animation<double> animation, __, Widget child) {
                      return Opacity(
                        opacity: animation.value,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 500),
                  )),
                  child: Container(
                    height: 43.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(9.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.1),
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: Colors.black12,
                            size: 25.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Find you want",
                                style: TextStyle(
                                    color: Colors.black26,
                                    fontFamily: "Gotik",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
