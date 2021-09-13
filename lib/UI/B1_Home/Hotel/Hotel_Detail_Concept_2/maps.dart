import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/services.dart' show rootBundle;
import 'package:trevatell_template/DataSample/mapsModelData.dart';

class maps extends StatefulWidget {
  maps({Key key}) : super(key: key);

  @override
  _mapsState createState() => _mapsState();
}

class _mapsState extends State<maps> {
  GoogleMapController _controller;
  BitmapDescriptor customIcon;
  bool isMapCreated = false;
  String _mapStyle;
  List<Marker> allMarkers = [];
  PageController _pageController;
  int prevPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setCustomMapPin();

    hotelLocation.forEach((element) {
      allMarkers.add(Marker(
          icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueViolet,
          ),
          markerId: MarkerId(element.shopName),
          draggable: false,
          infoWindow:
              InfoWindow(title: element.shopName, snippet: element.address),
          position: element.locationCoords));
    });
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8)
      ..addListener(_onScroll);
  }

  void setCustomMapPin() async {
    customIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'assets/image/icon/marker.png');
  }

  void _onScroll() {
    if (_pageController.page.toInt() != prevPage) {
      prevPage = _pageController.page.toInt();
      moveCamera();
    }
  }

  _coffeeShopList(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 125.0,
            width: Curves.easeInOut.transform(value) * 350.0,
            child: widget,
          ),
        );
      },
      child: Padding(
        padding:
            const EdgeInsets.only(left: 0.0, right: 8.0, top: 5.0, bottom: 5.0),
        child: Container(
          height: 140.0,
          width: 340.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                    color: Colors.white.withOpacity(0.03))
              ]),
          child: Row(
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Container(
                  height: 140.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0)),
                      image: DecorationImage(
                          image: NetworkImage(hotelLocation[index].thumbNail),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        width: 150.0,
                        child: Text(
                          hotelLocation[index].shopName,
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0),
                          overflow: TextOverflow.ellipsis,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 14.0,
                            color: Colors.deepPurpleAccent,
                          ),
                          Container(
                            width: 140.0,
                            child: Text(
                              hotelLocation[index].address,
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 14.5,
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepPurpleAccent,
                                    size: 21.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepPurpleAccent,
                                    size: 21.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepPurpleAccent,
                                    size: 21.0,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepPurpleAccent,
                                    size: 21.0,
                                  ),
                                  Icon(
                                    Icons.star_half,
                                    color: Colors.deepPurpleAccent,
                                    size: 21.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(40.7237765, -74.017617), zoom: 13.0),

            // markers: markers,
            onTap: (pos) {
              print(pos);
              Marker m = Marker(
                  markerId: MarkerId('1'), icon: customIcon, position: pos);
              setState(() {
                allMarkers.add(m);
              });
            },
            markers: Set.from(allMarkers),
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
              _controller.setMapStyle(_mapStyle);
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              controller: _pageController,
              itemCount: hotelLocation.length,
              itemBuilder: (BuildContext context, int index) {
                return _coffeeShopList(index);
              },
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Container(
                height: 75.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                          child: Icon(Icons.arrow_back_ios),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 30.0),
                      child: Center(
                        child: Text(
                          "Locations",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              letterSpacing: 1.4),
                        ),
                      ),
                    ),
                    Container(
                      width: 43.0,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 40.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: <Color>[
                    Color(0x00FFFFFF),
                    Color(0xFFFFFFFF),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }

  moveCamera() {
    _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: hotelLocation[_pageController.page.toInt()].locationCoords,
        zoom: 14.0,
        bearing: 45.0,
        tilt: 45.0)));
  }
}
