import 'package:flutter/material.dart';

class Followers extends StatelessWidget {
  final String title;
  final String num;

  Followers({this.title, this.num});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(num,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400),),
        SizedBox(height: 10,),
        Text(title,style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w400),),

      ],
    );
  }
}
