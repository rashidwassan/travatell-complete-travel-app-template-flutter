import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Login.dart';

/// Component UI
class introVideo extends StatefulWidget {
  @override
  _introVideoState createState() => _introVideoState();
}

/// Component UI
class _introVideoState extends State<introVideo> with TickerProviderStateMixin {
  /// Declare Animation
  AnimationController animationController;
  var tapLogin = 0;
  var tapSignup = 0;

  @override

  /// Declare animation in initState
  void initState() {
    // TODO: implement initState
    /// Animation proses duration
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300))
          ..addStatusListener((statuss) {
            if (statuss == AnimationStatus.dismissed) {
              setState(() {
                tapLogin = 0;
                tapSignup = 0;
              });
            }
          });
    super.initState();
  }

  /// To dispose animation controller
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  /// Play animation set forward reverse
  Future<Null> _Playanimation() async {
    try {
      await animationController.forward();
      await animationController.reverse();
    } on TickerCanceled {}
  }

  /// Component Widget layout UI
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    mediaQuery.devicePixelRatio;
    mediaQuery.size.height;
    mediaQuery.size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          ///
          /// Set background video
          ///
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/video/onBoarding.gif"),
                    fit: BoxFit.cover)),
          ),
          Container(
            child: Container(
              /// Set gradient color in image (Click to open code)
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                    Color.fromRGBO(0, 0, 0, 0.1),
                    Color.fromRGBO(0, 0, 0, 0.4)
                  ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter)),

              /// Set component layout
              child: ListView(
                padding: EdgeInsets.all(0.0),
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: <Widget>[
                          Container(
                            alignment: AlignmentDirectional.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 100.0, bottom: 110.0),
                                  child: Center(
                                      child: Image.asset(
                                    "assets/image/logo/logo.png",
                                    fit: BoxFit.cover,
                                    height: 85.0,
                                  )),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 160.0,
                                        right: 160.0,
                                        top: mediaQuery.padding.top + 50.0,
                                        bottom: 20.0),
                                    child: Container(
                                      color: Colors.white,
                                      height: 0.3,
                                    )),
                                Center(
                                  child: Text(
                                    "Life is Only Once, Enjoy your Life",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Sans",
                                        letterSpacing: 1.3),
                                  ),
                                ),
                                SizedBox(height: 30.0),
                                Center(
                                  child: Container(
                                    color: Colors.white,
                                    height: 0.3,
                                    width: 40.0,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 220.0)),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              /// To create animation if user tap == animation play (Click to open code)
                              tapLogin == 0
                                  ? Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        splashColor: Colors.white,
                                        onTap: () {
                                          setState(() {
                                            tapLogin = 1;
                                          });
                                          _Playanimation();
                                          return tapLogin;
                                        },
                                        child: ButtonCustom(
                                          txt: "Sign Up",
                                          gradient1: Color(0xFF647DEE),
                                          gradient2: Color(0xFF7F53AC),
                                          border: Colors.transparent,
                                        ),
                                      ),
                                    )
                                  : AnimationSplashSignup(
                                      animationController:
                                          animationController.view,
                                    ),
                              Padding(padding: EdgeInsets.only(top: 5.0)),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    /// To set white line (Click to open code)
                                    Container(
                                      color: Colors.white,
                                      height: 0.2,
                                      width: 80.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.0, right: 10.0),

                                      /// navigation to home screen if user click "OR SKIP" (Click to open code)
                                      child: Text(
                                        "OR",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100,
                                            fontFamily: "Sans",
                                            fontSize: 15.0),
                                      ),
                                    ),

                                    /// To set white line (Click to open code)
                                    Container(
                                      color: Colors.white,
                                      height: 0.2,
                                      width: 80.0,
                                    )
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 60.0)),
                            ],
                          ),

                          /// To create animation if user tap == animation play (Click to open code)
                          tapSignup == 0
                              ? Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {
                                      setState(() {
                                        tapSignup = 1;
                                      });
                                      _Playanimation();
                                      return tapSignup;
                                    },
                                    child: ButtonCustom(
                                      txt: "Sign In",
                                      gradient1: Colors.transparent,
                                      gradient2: Colors.transparent,
                                      border: Color(0xFF7F53AC),
                                    ),
                                  ),
                                )
                              : AnimationSplashLogin(
                                  animationController: animationController.view,
                                ),
                        ],
                      ),
                    ],
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

/// Button Custom widget
class ButtonCustom extends StatelessWidget {
  @override
  String txt;
  GestureTapCallback ontap;
  Color gradient1;
  Color gradient2;
  Color border;

  ButtonCustom({this.txt, this.gradient1, this.gradient2, this.border});

  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.white,
        child: LayoutBuilder(builder: (context, constraint) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              height: 55.0,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: border,
                ),
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(colors: [
                  gradient1,
                  gradient2,
                ]),
              ),
              child: Center(
                  child: Text(
                txt,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Sofia",
                    letterSpacing: 0.5),
              )),
            ),
          );
        }),
      ),
    );
  }
}

/// Set Animation Login if user click button login
class AnimationSplashLogin extends StatefulWidget {
  AnimationSplashLogin({Key key, this.animationController})
      : animation = new Tween(
          end: 900.0,
          begin: 70.0,
        ).animate(CurvedAnimation(
            parent: animationController, curve: Curves.fastOutSlowIn)),
        super(key: key);

  final AnimationController animationController;
  final Animation animation;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 60.0),
      child: Container(
        height: animation.value,
        width: animation.value,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: animation.value < 600 ? BoxShape.circle : BoxShape.rectangle,
        ),
      ),
    );
  }

  @override
  _AnimationSplashLoginState createState() => _AnimationSplashLoginState();
}

/// Set Animation Login if user click button login
class _AnimationSplashLoginState extends State<AnimationSplashLogin> {
  @override
  Widget build(BuildContext context) {
    widget.animationController.addListener(() {
      if (widget.animation.isCompleted) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => new Login()));
        //hello
      }
    });
    return AnimatedBuilder(
      animation: widget.animationController,
      builder: widget._buildAnimation,
    );
  }
}

/// Set Animation signup if user click button signup
class AnimationSplashSignup extends StatefulWidget {
  AnimationSplashSignup({Key key, this.animationController})
      : animation = new Tween(
          end: 900.0,
          begin: 70.0,
        ).animate(CurvedAnimation(
            parent: animationController, curve: Curves.fastOutSlowIn)),
        super(key: key);

  final AnimationController animationController;
  final Animation animation;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 60.0),
      child: Container(
        height: animation.value,
        width: animation.value,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: animation.value < 600 ? BoxShape.circle : BoxShape.rectangle,
        ),
      ),
    );
  }

  @override
  _AnimationSplashSignupState createState() => _AnimationSplashSignupState();
}

/// Set Animation signup if user click button signup
class _AnimationSplashSignupState extends State<AnimationSplashSignup> {
  @override
  Widget build(BuildContext context) {
    widget.animationController.addListener(() {
      if (widget.animation.isCompleted) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => new Login()));
      }
    });
    return AnimatedBuilder(
      animation: widget.animationController,
      builder: widget._buildAnimation,
    );
  }
}
