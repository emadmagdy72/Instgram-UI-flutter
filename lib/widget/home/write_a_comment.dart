import 'package:flutter/material.dart';

class Commenting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 5),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: 'mosalah  ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
            TextSpan(
              text: 'Get well soon  ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
            TextSpan(
              text: '@moamen_zakira88  ',
              style: TextStyle(
                  color: Color(0xffeeeeee),
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            TextSpan(text: '\u{1F932}\u{1F64F}\u{1F64F}')
          ],
        ),
      ),
    );
  }
}

