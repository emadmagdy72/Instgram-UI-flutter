import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'file:///E:/Projects/instgram/lib/widget/login/text_field.dart';
import 'package:instgram/widget/login/button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff000000),
        body: ListView(
          children: [
            SizedBox(
              height: 130,
            ),
            Image(
              image: ExactAssetImage('assets/instgram logo.png'),
              color: Colors.white,
              height: 150,
              width: 500,
              fit: BoxFit.fitHeight,
            ),
            Field(
              title: 'Phone number, email or username',
              secure: false,
              icon: null,
            ),
            SizedBox(
              height: 20,
            ),
            Field(
              title: 'Password',
              secure: true,
              icon: FontAwesome5.eye_slash,
            ),
            SizedBox(
              height: 20,
            ),
            Button(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot your login details?',
                  style: TextStyle(
                      color: Color(0xff999999), fontWeight: FontWeight.w400),
                ),
                Text(
                  ' Get help loggin in.',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    color: Color(0xff121212),
                    width: 155,
                  ),
                  Text(
                    '  OR  ',
                    style: TextStyle(color: Color(0xff999999)),
                  ),
                  Container(
                    height: 1,
                    color: Color(0xff121212),
                    width: 155,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesome5Brands.facebook,
                  size: 30,
                  color: Color(0xff1877f2),
                ),
                Text(
                  '   Log in with facebook',
                  style: TextStyle(
                    color: Color(0xff1877f2),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: 1,
              color: Color(0xff121212),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                    color: Color(0xff999999),
                  ),
                ),
                Text('Sign up',style: TextStyle(color: Colors.white),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
