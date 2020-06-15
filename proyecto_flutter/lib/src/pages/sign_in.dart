import 'dart:ui';

import 'package:flutter/material.dart';

class Sign_In extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: appBar,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://wallpaperplay.com/walls/full/c/4/f/228149.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            row,
            Container(margin: EdgeInsets.only(top: 200), child: card),
            Container(margin: EdgeInsets.only(top: 40), child: button),
          ],
        ),
      ),
    );
  }
}

final appBar = new AppBar(
  title: Text('Sign in'),
  backgroundColor: Color(0xFF14292E),
  actions: <Widget>[
    FlatButton(
      textColor: Colors.white,
      onPressed: () {},
      child: Icon(
        Icons.add,
      ),
      shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
    ),
  ],
);

final row = new Container(
    margin: EdgeInsets.only(
      top: 60,
      left: 20,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Sing in',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        FlatButton(
            textColor: Colors.white,
            onPressed: () {},
            child: Icon(
              Icons.add,
            ),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            color: Color(0xFF205263)),
      ],
    ));

final card = new Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  ),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
        margin: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.email), hintText: "Email or Username"),
          // hintStyle: TextStyle(
          //   fontWeight: FontWeight.w300,
          // )),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock), hintText: "Password"),
          // hintStyle: TextStyle(
          //   fontWeight: FontWeight.w300,
          // )),
        ),
      ),
    ],
  ),
);

// final button = new FlatButton(
//     child: const Text('Sign in'),
//     width: 200.0,
//     onPressed: () {/* ... */},
//     color: Color(0xFF088d7a),
//     textColor: Colors.white,);

final button = new ButtonTheme(
  minWidth: 400.0,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Color(0xFF205263))),
  buttonColor: Color(0xFF088d7a),
  child: RaisedButton(
    onPressed: () {},
    child: Text(
      "Sing in",
      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.white),
    ),
  ),
);
