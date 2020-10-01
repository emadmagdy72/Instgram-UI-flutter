import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Field extends StatelessWidget {
  final IconData icon ;
  final String title;
  final bool secure;

  Field({this.icon, this.title, this.secure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextField(
        obscureText: secure,
        cursorColor: Color(0xff999999),
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          fillColor: Color(0xff121212),
          filled: true,
          hintText: title,
          hintStyle: TextStyle(color: Color(0xff999999)),
          contentPadding:
              EdgeInsets.only(left: 20, right: 20, top: 22, bottom: 22),
          suffixIcon: Icon(icon,color: Color(0xff999999),),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: Color(0xff000000),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xff000000),
            ),
          ),
        ),
      ),
    );
  }
}
