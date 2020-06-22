import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Login_Page extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return cont;
  }
}


Container cont = Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.blue,
        Colors.teal,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ),
  child: ListView(
    children: <Widget>[
      headerSection(),
      textSection(),
      //buttonSection(),
    ],
  ),
);

Container headerSection() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
    child: Text("Login",style: TextStyle(color: Colors.white),),
  );
}


Container textSection(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    margin: EdgeInsets.only(top: 30.0),
    child: Column(children: <Widget>[
    //  txtEmail("Email",Icons.email),
      SizedBox(height: 30.0 ),
  //    txtPwd("Password",Icons.lock),

    ],),
  );
}


