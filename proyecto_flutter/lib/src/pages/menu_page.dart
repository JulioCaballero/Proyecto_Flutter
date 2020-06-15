import 'package:flutter/material.dart';
import 'package:proyecto_flutter/src/pages/details_page.dart';
import 'package:proyecto_flutter/src/pages/flutter_page.dart';
import 'package:proyecto_flutter/src/pages/react_page.dart';
import 'package:proyecto_flutter/src/pages/sign_in.dart';
import 'package:proyecto_flutter/src/pages/xamarin_page.dart';

import 'hello_flutter.dart';

class Menu_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //Hello Flutter
          Container(
            margin: EdgeInsets.all(20),
            child: ButtonTheme(
              minWidth: 350.0,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFF205263))),
              buttonColor: Color(0xFF088d7a),
              child: RaisedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => Hello_Flutter());
                  Navigator.push(context, route);
                },
                child: Text(
                  "Hello Flutter",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          //Datails page
          Container(
            margin: EdgeInsets.all(20),
            child: ButtonTheme(
              minWidth: 350.0,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFF205263))),
              buttonColor: Color(0xFF088d7a),
              child: RaisedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => Details_Page());
                  Navigator.push(context, route);
                },
                child: Text(
                  "Details Page",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          //Sign In page
          Container(
            margin: EdgeInsets.all(20),
            child: ButtonTheme(
              minWidth: 350.0,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFF205263))),
              buttonColor: Color(0xFF088d7a),
              child: RaisedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => Sign_In());
                  Navigator.push(context, route);
                },
                child: Text(
                  "Sing in",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          //React Page
          Container(
            margin: EdgeInsets.all(20),
            child: ButtonTheme(
              minWidth: 350.0,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFF205263))),
              buttonColor: Color(0xFF088d7a),
              child: RaisedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => React_Page());
                  Navigator.push(context, route);
                },
                child: Text(
                  "React Page",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          //Flutter Page
          Container(
            margin: EdgeInsets.all(20),
            child: ButtonTheme(
              minWidth: 350.0,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFF205263))),
              buttonColor: Color(0xFF088d7a),
              child: RaisedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => Flutter_Page());
                  Navigator.push(context, route);
                },
                child: Text(
                  "Flutter Page",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          //Xamarin Page
          Container(
            margin: EdgeInsets.all(20),
            child: ButtonTheme(
              minWidth: 350.0,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Color(0xFF205263))),
              buttonColor: Color(0xFF088d7a),
              child: RaisedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => Xamarin_Page());
                  Navigator.push(context, route);
                },
                child: Text(
                  "Xamarin Page",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final appBar = new AppBar(title: Text('Menu'));
