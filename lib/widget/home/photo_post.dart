import 'package:flutter/material.dart';

class PhotoPost extends StatelessWidget {
  final String image ;
  PhotoPost({this.image});
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 380,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage(image),
            fit: BoxFit.cover
        ),
      ),
    );
  }
}
