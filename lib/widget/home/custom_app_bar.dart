import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff1a1a1a),
      leading: Icon(
        Feather.camera,
        size: 30,
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 5,),
        child: Image(
          image: ExactAssetImage('assets/instgram logo.png',),
          height: 120,
          color: Colors.white,
        ),
      ),
      actions: [
       Padding(
         padding: const EdgeInsets.only(right: 15),
         child: Icon(Feather.send,size: 30,),
       )
      ],
    );
  }
}
