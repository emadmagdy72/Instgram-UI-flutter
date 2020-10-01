import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  final String numbers ;
  Comments({this.numbers});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,top: 5),
      child: Text(
        'View all ' + numbers + ' comments',
        style: TextStyle(
          color: Color(0xff9d9d9d),
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
