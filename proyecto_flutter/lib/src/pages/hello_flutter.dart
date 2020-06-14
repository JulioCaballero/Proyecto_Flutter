import 'dart:ui';

import 'package:flutter/material.dart';

class Hello_Flutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(margin: EdgeInsets.all(20), child: card),
    );
  }
}

final appBar = new AppBar(
    title: Text('Hello Flutter!'), backgroundColor: Color(0xFFf44236));

final card = Card(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
        child: const Image(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQxHyGdVaWSweJABT_F1djb889QMKq7EDebMDZIwl-jIZ1J-JmX&usqp=CAU'),
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          left: 20,
          top: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Foto con animación Hero', style: TextStyle(fontSize: 18)),
            Text('Aqui va el subtitulo, descripción de la card',
                style: TextStyle(fontSize: 15, color: Color(0xFFD8D8D8))),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          right: 10,
          top: 10,
        ),
        child: barButton,
      ),
    ],
  ),
);

final barButton = ButtonBar(
  children: <Widget>[
    FlatButton(
        child: const Text('VER MÁS'),
        onPressed: () {/* ... */},
        textColor: Color(0xFFe5948d)),
  ],
);
