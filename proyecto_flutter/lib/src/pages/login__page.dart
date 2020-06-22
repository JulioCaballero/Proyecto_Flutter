import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto_flutter/src/pages/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://wallpaperplay.com/walls/full/c/4/f/228149.jpg"),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),

          // gradient: LinearGradient(
          //     colors: [Colors.blue, Colors.teal],
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomCenter),
        ),
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView(
                children: <Widget>[
                  headerSection(),
                  textSection(),
                  buttonSection(),
                  buttonFacebook(),
                ],
              ),
      ),
    );
  }

  login(String email, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'username': email, 'password': pass};
    var jsonResponse = null;
    var response = await http.post("https://63b28d6c4eae.ngrok.io/api/v1/login",
        body: data);
    if (response.statusCode == 200) {
      print("el login es correcto");
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => MainPage()),
            (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);
      passwordController.text = "";
    }
  }

  Container buttonSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.only(top: 15.0),
      child: RaisedButton(
        onPressed: emailController.text == "" || passwordController.text == ""
            ? null
            : () {
                setState(() {
                  _isLoading = true;
                });
                login(emailController.text, passwordController.text);
              },
        elevation: 0.0,
        color: Color(0xFF088d7a),
        child: Text("LOGIN",
            style: TextStyle(color: Colors.white70, fontSize: 15.0)),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  Container buttonFacebook() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.only(
        top: 20.0,
      ),
      height: 50.0,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: Color(0xFF088d7a), style: BorderStyle.solid, width: 1.0),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                //child: (ImageIcon(NetworkImage('...assets/face.png'))),
                ),
            SizedBox(width: 10.0),
            Center(
              child: Text(
                'Log in with facebook',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF088d7a),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  Container textSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      margin: EdgeInsets.only(top: 100.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: emailController,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white70),
            decoration: InputDecoration(
              icon: Icon(Icons.email, color: Colors.white70),
              hintText: "EMAIL OR USERNAME",
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF088d7a))),
              hintStyle: TextStyle(color: Colors.white70),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: passwordController,
            cursorColor: Colors.white,
            obscureText: true,
            style: TextStyle(color: Colors.white70),
            decoration: InputDecoration(
              icon: Icon(Icons.lock, color: Colors.white70),
              hintText: "PASSWORD",
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF088d7a))),
              hintStyle: TextStyle(color: Colors.white70),
            ),
          ),
          Container(
            alignment: Alignment(1.0, 0.0),
            padding: EdgeInsets.only(top: 15.0, left: 20.0),
            child: InkWell(
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    color: Color(0xFF2ea593),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row headerSection() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 58.0, left: 18),
          // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Text("Login",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold)),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 30,
          ),
          child: Text(
            '.',
            style: TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF088d7a)),
          ),
        ),
      ],
    );
  }
}
