import 'package:flutter/material.dart';

class CirclePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundImage: ExactAssetImage('assets/stories/trika.jpg'),
    );
  }
}
