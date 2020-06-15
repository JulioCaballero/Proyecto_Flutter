import 'package:flutter/material.dart';
//Importaciones de paginas
import 'package:proyecto_flutter/src/pages/menu_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Menu_Page(),
    );
  }
}
