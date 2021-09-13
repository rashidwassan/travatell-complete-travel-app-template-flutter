import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:trevatell_template/DataSample/messageModel.dart';

class messageList extends StatefulWidget {
  messageList({Key key}) : super(key: key);

  @override
  _messageState createState() => _messageState();
}

class _messageState extends State<messageList> {
  final List<messageItem> items = new List();

  @override
  void initState() {
    super.initState();
    setState(() {
      items.add(
        messageItem(
          img: "assets/image/images/GirlProfile.png",
          id: 1,
          title: "Alex Nourin",
          message: "Hi nice to meet you, i will help you",
        ),
      );
    });
  }

  /// Declare price and value for chart
  int value = 1;
  int pay = 950;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFF6991C7)),
        backgroundColor: Colors.white,
        title: Text(
          "Message",
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: "Gotik",
              fontSize: 22.0,
              color: Colors.black,
              letterSpacing: 0.9),
        ),
        elevation: 0.0,
      ),

      ///
      ///
      /// Checking item value of cart
      ///
      ///
      body: Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: items.length > 0
              ? ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, position) {
                    ///
                    /// Widget for list view slide delete
                    ///
                    return Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      actionExtentRatio: 0.25,
                      actions: <Widget>[
                        new IconSlideAction(
                          caption: "Message Archive",
                          color: Colors.blue,
                          icon: Icons.archive,
                          onTap: () {
                            ///
                            /// SnackBar show if cart Archive
                            ///
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text("Archive"),
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.blue,
                            ));
                          },
                        ),
                      ],
                      secondaryActions: <Widget>[
                        new IconSlideAction(
                          key: Key(items[position].id.toString()),
                          caption: "Message Delete",
                          color: Colors.red,
                          icon: Icons.delete,
                          onTap: () {
                            setState(() {
                              items.removeAt(position);
                            });

                            ///
                            /// SnackBar show if cart delete
                            ///
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text("Message deleted"),
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.redAccent,
                            ));
                          },
                        ),
                      ],
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 1.0, left: 13.0, right: 13.0),

                        /// Background Constructor for card
                        child: Container(
                          height: 220.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.1),
                                blurRadius: 3.5,
                                spreadRadius: 0.4,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.all(10.0),

                                      /// Image item
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.1),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black12
                                                        .withOpacity(0.1),
                                                    blurRadius: 0.5,
                                                    spreadRadius: 0.1)
                                              ]),
                                          child: Image.asset(
                                            '${items[position].img}',
                                            height: 130.0,
                                            width: 120.0,
                                            fit: BoxFit.cover,
                                          ))),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 25.0, left: 10.0, right: 5.0),
                                      child: Column(
                                        /// Text Information Item
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '${items[position].title}',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Sans",
                                              color: Colors.black87,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10.0)),
                                          Text(
                                            '${items[position].name}',
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10.0)),
                                          Text('${items[position].message}'),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 18.0, left: 0.0),
                                            child: Container(
                                              width: 112.0,
                                              decoration: BoxDecoration(
                                                  color: Colors.white70,
                                                  border: Border.all(
                                                      color: Colors.black12
                                                          .withOpacity(0.1))),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  /// Decrease of value item
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        value = value - 1;
                                                        pay = 950 * value;
                                                      });
                                                    },
                                                    child: Container(
                                                      height: 30.0,
                                                      width: 30.0,
                                                      decoration: BoxDecoration(
                                                          border: Border(
                                                              right: BorderSide(
                                                                  color: Colors
                                                                      .black12
                                                                      .withOpacity(
                                                                          0.1)))),
                                                      child: Center(
                                                          child: Text("-")),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 18.0),
                                                    child:
                                                        Text(value.toString()),
                                                  ),

                                                  /// Increasing value of item
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        value = value + 1;
                                                        pay = 950 * value;
                                                      });
                                                    },
                                                    child: Container(
                                                      height: 30.0,
                                                      width: 28.0,
                                                      decoration: BoxDecoration(
                                                          border: Border(
                                                              left: BorderSide(
                                                                  color: Colors
                                                                      .black12
                                                                      .withOpacity(
                                                                          0.1)))),
                                                      child: Center(
                                                          child: Text("+")),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.vertical,
                )
              : noItemCart()),
    );
  }
}

///
///
/// If no item cart this class showing
///
class noItemCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double _height = MediaQuery.of(context).size.height;
    return Container(
      width: 500.0,
      color: Colors.white,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: _height / 5.0)),
            Image.asset(
              "assets/image/illustration/message.png",
              width: 320.0,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Not Have Message",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 21.5,
                  color: Colors.black26.withOpacity(0.2),
                  fontFamily: "Sofia"),
            ),
          ],
        ),
      ),
    );
  }
}
