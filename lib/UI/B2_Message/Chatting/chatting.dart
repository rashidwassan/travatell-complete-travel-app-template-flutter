import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatting extends StatefulWidget {
  String name, photoProfile;
  chatting({this.name, this.photoProfile});

  _chattingState createState() => _chattingState();
}

class _chattingState extends State<chatting> with TickerProviderStateMixin {
  final List<Msg> _messages = <Msg>[];
  final TextEditingController _textController = new TextEditingController();
  bool _isWriting = false;

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Container(
              color: Colors.white,
              child: new Column(children: <Widget>[
                new Flexible(
                  child: _messages.length > 0
                      ? Container(
                          child: new ListView.builder(
                            itemBuilder: (_, int index) => _messages[index],
                            itemCount: _messages.length,
                            reverse: true,
                            padding: new EdgeInsets.all(10.0),
                          ),
                        )
                      : NoMessage(),
                ),
                new Container(
                  child: _buildComposer(),
                ),
              ]),
            ),
          ),
          Container(
            height: 85.0,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "X",
                            style:
                                TextStyle(color: Colors.black, fontSize: 15.0),
                          )),
                    ),
                    Text(widget.name,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.1,
                            fontSize: 17.0)),
                    SizedBox(
                      width: 23.0,
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }

  /// Component for typing text
  Widget _buildComposer() {
    return new IconTheme(
      data: new IconThemeData(
        color: Color(0xFF7F53AC),
      ),
      child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 9.0),
          child: new Row(
            children: <Widget>[
              Icon(
                Icons.add,
                color: Color(0xFF7F53AC),
                size: 27.0,
              ),
              new Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0, bottom: 10.0),
                  child: Container(
                    height: 46.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0,
                            color: Colors.black12.withOpacity(0.1),
                            spreadRadius: 2.0,
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0.0, left: 20.0),
                      child: new TextField(
                        controller: _textController,
                        onChanged: (String txt) {
                          setState(() {
                            _isWriting = txt.length > 0;
                          });
                        },
                        onSubmitted: _submitMsg,
                        decoration: new InputDecoration.collapsed(
                            hintText: "Enter text",
                            hintStyle: TextStyle(
                                fontFamily: "Sofia",
                                fontSize: 17.1,
                                letterSpacing: 1.5,
                                color: Colors.black26)),
                      ),
                    ),
                  ),
                ),
              ),
              new Container(
                  margin: new EdgeInsets.symmetric(horizontal: 3.0),
                  child: Theme.of(context).platform == TargetPlatform.iOS
                      ? new CupertinoButton(
                          child: Icon(
                            Icons.send,
                            color: Color(0xFF7F53AC),
                          ),
                          // child: new Text("Submit"),
                          onPressed: _isWriting
                              ? () => _submitMsg(_textController.text)
                              : null)
                      : new IconButton(
                          icon: new Icon(
                            Icons.send,
                            color: Color(0xFF7F53AC),
                          ),
                          onPressed: _isWriting
                              ? () => _submitMsg(_textController.text)
                              : null,
                        )),
            ],
          ),
          decoration: Theme.of(context).platform == TargetPlatform.iOS
              ? new BoxDecoration()
              : null),
    );
  }

  void _submitMsg(String txt) {
    _textController.clear();
    setState(() {
      _isWriting = false;
    });
    Msg msg = new Msg(
      txt: txt,
      animationController: new AnimationController(
          vsync: this, duration: new Duration(milliseconds: 800)),
    );
    setState(() {
      _messages.insert(0, msg);
    });
    msg.animationController.forward();
  }

  @override
  void dispose() {
    for (Msg msg in _messages) {
      msg.animationController.dispose();
    }
    super.dispose();
  }
}

class Msg extends StatelessWidget {
  Msg({this.txt, this.animationController});

  final String txt;
  final AnimationController animationController;

  @override
  Widget build(BuildContext ctx) {
    return new SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController, curve: Curves.fastOutSlowIn),
      axisAlignment: 0.0,
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Expanded(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(1.0),
                              bottomLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0)),
                          gradient: LinearGradient(
                              colors: [Color(0xFF647DEE), Color(0xFF7F53AC)])),
                      padding: const EdgeInsets.all(10.0),
                      child: new Text(
                        txt,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NoMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 130.0),
            child: Center(
              child: Opacity(
                  opacity: 0.8,
                  child: Image.asset(
                    "assets/image/illustration/noMessage.png",
                    height: 220.0,
                  )),
            ),
          ),
          SizedBox(height: 25.0),
          Center(
              child: Text(
            "Not Have Message",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 19.5,
                color: Colors.black38,
                fontFamily: "Sofia"),
          ))
        ],
      ),
    ));
  }
}
