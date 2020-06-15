import 'dart:ui';

import 'package:flutter/material.dart';

class React_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF04a5cf),
      //  appBar: appBar,
      body: Center(child:image),
    );
  }
}

final image = new Image(
  image: NetworkImage(
      'https://blog.launchdarkly.com/wp-content/uploads/2019/05/react-native-workshop-1024x538.jpg'),
);
