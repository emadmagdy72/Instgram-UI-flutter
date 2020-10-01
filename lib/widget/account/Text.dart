import 'package:flutter/material.dart';

class Bio extends StatelessWidget {
  final String title;
  Bio({this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,top: 8),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}
