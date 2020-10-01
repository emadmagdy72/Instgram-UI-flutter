import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
class DownPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,left: 15,right: 15,bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(AntDesign.heart,color: Colors.red,size: 28),
              SizedBox(width: 15,),
              Icon(FontAwesome.comment_o,color: Colors.white,size: 28,),
              SizedBox(width: 15,),
              Icon(Feather.send,color: Colors.white,size: 28)
            ],
          ),
          Icon(Icons.bookmark_border,color: Colors.white,size: 28)
        ],
      ),
    );
  }
}
