import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadPost extends StatelessWidget {
  final String image;
  final String title;

  HeadPost({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: ExactAssetImage(image),
        radius: 21,
      ),
      title: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      trailing: Icon(Icons.more_vert,color: Colors.white,),
      contentPadding: EdgeInsets.only(bottom: 7,top: 5,left: 15,right: 10),
    );
  }
}
