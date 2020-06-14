import 'dart:ui';

import 'package:flutter/material.dart';

class Details_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Container(
          child: card
        )
      ),
    );
  }
}

final appBar =
    new AppBar(title: Text('Details page'), backgroundColor: Color(0xFFf44236));

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
    ],
  ),
);
