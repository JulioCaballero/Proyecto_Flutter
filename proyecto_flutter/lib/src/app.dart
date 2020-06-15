import 'package:flutter/material.dart';
//Importaciones de paginas
import 'package:proyecto_flutter/src/pages/flutter_page.dart';
import 'package:proyecto_flutter/src/pages/react_page.dart';
import 'package:proyecto_flutter/src/pages/sign_in.dart';
import 'package:proyecto_flutter/src/pages/details_page.dart';
import 'package:proyecto_flutter/src/pages/hello_flutter.dart';
import 'package:proyecto_flutter/src/pages/xamarin_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hello_Flutter(),
    );
  }
}
