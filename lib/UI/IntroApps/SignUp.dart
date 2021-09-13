import 'package:flutter/material.dart';
import 'package:trevatell_template/Library/SupportingLibrary/Animation/FadeAnimation.dart';
import 'package:trevatell_template/Library/SupportingLibrary/Animation/LoginAnimation.dart';
import 'package:trevatell_template/UI/IntroApps/Login.dart';
import 'SignUp.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> with TickerProviderStateMixin {
  @override

  //Animation Declaration
  AnimationController sanimationController;

  var tap = 0;

  @override

  /// set state animation controller
  void initState() {
    sanimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800))
          ..addStatusListener((statuss) {
            if (statuss == AnimationStatus.dismissed) {
              setState(() {
                tap = 0;
              });
            }
          });
    // TODO: implement initState
    super.initState();
  }

  /// Dispose animation controller
  @override
  void dispose() {
    sanimationController.dispose();
    super.dispose();
  }

  /// Playanimation set forward reverse
  Future<Null> _PlayAnimation() async {
    try {
      await sanimationController.forward();
      await sanimationController.reverse();
    } on TickerCanceled {}
  }

  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  /// Image Top
                  Container(
                    height: 220,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          height: 270,
                          width: width + 20,
                          child: FadeAnimation(
                              1.3,
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/destinationPopuler/tripBackground.png'),
                                        fit: BoxFit.fill)),
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                            1.2,
                            Text(
                              "Signup",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w800,
                                  fontSize: 37.5,
                                  wordSpacing: 0.1),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(
                            1.7,
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(196, 135, 198, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10),
                                    )
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "User Name",
                                          icon: Icon(
                                            Icons.person,
                                            color: Colors.black12,
                                          ),
                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: "sofia")),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Email",
                                          icon: Icon(
                                            Icons.email,
                                            color: Colors.black12,
                                          ),
                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: "sofia")),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Password",
                                          icon: Icon(
                                            Icons.vpn_key,
                                            color: Colors.black12,
                                          ),
                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: "sofia")),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.7,
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                      PageRouteBuilder(
                                          pageBuilder: (_, __, ___) => Login(),
                                          transitionDuration:
                                              Duration(milliseconds: 2000),
                                          transitionsBuilder: (_,
                                              Animation<double> animation,
                                              __,
                                              Widget child) {
                                            return Opacity(
                                              opacity: animation.value,
                                              child: child,
                                            );
                                          }));
                                },
                                child: Text(
                                  "Have Account? Login",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 1.3),
                                ))),
                        SizedBox(
                          height: 90,
                        ),
                      ],
                    ),
                  )
                ],
              ),

              /// Set Animaion after user click buttonSignup
              tap == 0
                  ? InkWell(
                      splashColor: Colors.yellow,
                      onTap: () {
                        setState(() {
                          tap = 1;
                        });
                        new LoginAnimation(
                          animationController: sanimationController.view,
                        );
                        _PlayAnimation();
                        return tap;
                      },
                      child: FadeAnimation(
                          1.9,
                          Container(
                            height: 55.0,
                            margin: EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xFF8DA2BF),
                            ),
                            child: Center(
                              child: Text(
                                "Signup",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17.5,
                                    letterSpacing: 1.2),
                              ),
                            ),
                          )),
                    )
                  : new LoginAnimation(
                      animationController: sanimationController.view,
                    )
            ],
          ),
        ],
      ),
    );
  }
}
