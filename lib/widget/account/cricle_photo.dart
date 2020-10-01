import 'package:flutter/material.dart';

class CirclePhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xfff56644),
      child: CircleAvatar(
        radius: 48,
        backgroundColor: Color(0xff1a1a1a),
        child: CircleAvatar(
          radius: 45,
          backgroundImage: ExactAssetImage('assets/IMG20200903172945-11.jpeg'),
        ),
      ),
    );
  }
}
