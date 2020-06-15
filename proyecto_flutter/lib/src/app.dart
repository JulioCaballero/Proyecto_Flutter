import 'package:flutter/material.dart';
import 'package:proyecto_flutter/src/pages/react_page.dart';

//Importaciones de paginas
import 'package:proyecto_flutter/src/pages/sign_in.dart';
import 'package:proyecto_flutter/src/pages/details_page.dart';
import 'package:proyecto_flutter/src/pages/hello_flutter.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: React_Page(),
    );
  }
}
