import 'dart:ui';

import 'package:flutter/material.dart';

class Xamarin_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3485c7),
      //  appBar: appBar,
      body: Center(child:image),
    );
  }
}

final image = new Image(
  image: NetworkImage(
      'https://edteam-media.s3.amazonaws.com/blogs/original/02ed3082-6283-485f-abf0-53d23dda3368.jpg'),
);
