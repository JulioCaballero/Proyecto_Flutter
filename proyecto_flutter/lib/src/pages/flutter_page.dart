import 'dart:ui';

import 'package:flutter/material.dart';

class Flutter_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1c4d7c),
      //  appBar: appBar,
      body: Center(child:image),
    );
  }
}

final image = new Image(
  image: NetworkImage(
      'https://miro.medium.com/max/2444/1*EzFXz-Bu9ZirsBQmHiyMgg.png'),
);
