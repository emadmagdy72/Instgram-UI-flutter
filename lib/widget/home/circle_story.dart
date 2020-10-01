import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  final String image;
  final String title;
  StoryCircle({this.image,this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Color(0xfff56644),
            child: CircleAvatar(
              radius: 38,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 35,
                backgroundImage: ExactAssetImage(image),
              ),
            ),
          ),
        ),
        Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
