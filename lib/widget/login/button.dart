import 'package:flutter/material.dart';
import 'package:instgram/Screens/screen_navgation.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.only(left: 31,right: 31),
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PageNavigation()));
        },
        color: Color(0xff1877f2),
        child: Text(
          'Log In',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        padding: EdgeInsets.only(bottom: 18,top: 18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
      ),
    );
  }
}
