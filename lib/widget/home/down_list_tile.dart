import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DownListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 18,
        backgroundImage:
        ExactAssetImage('assets/IMG20200903172945-11.jpeg'),
      ),
      title: Text(
        'Add a comment...                            \u{2764}   \u{1F602}  ',
        style: TextStyle(color: Color(0xff9d9d9d), fontSize: 16),
      ),
      trailing: Icon(AntDesign.pluscircleo,color: Color(0xff9d9d9d),size: 18,),

    );
  }
}
