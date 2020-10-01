import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MyStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 14,bottom: 7),
          child:  CircleAvatar(
            radius: 37,
            backgroundImage: ExactAssetImage('assets/IMG20200903172945-11.jpeg'),
            child: Padding(
              padding: const EdgeInsets.only(top: 52,left: 50),
              child: CircleAvatar(
                radius: 14,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  backgroundColor: Color(0xff3897f1),
                  radius: 9,
                  child: Icon(Entypo.plus,color: Colors.white,size: 18,),
                ),
              ),
            ),
          ),
        ),
        Text('Your Story',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
