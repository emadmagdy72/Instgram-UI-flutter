import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  final String title;

  Time({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xff9d9d9d),
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
