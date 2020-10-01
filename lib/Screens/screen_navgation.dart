import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instgram/Screens/account_screen.dart';
import 'package:instgram/Screens/home_screen.dart';
import 'package:instgram/Screens/likes_screen.dart';
import 'package:instgram/Screens/search_screen.dart';
import 'package:instgram/Screens/upload_screen.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PageNavigation extends StatefulWidget {
  @override
  _PageNavigationState createState() => _PageNavigationState();
}

class _PageNavigationState extends State<PageNavigation> {
  var pages = [
    HomeScreen(),
    SearchScreen(),
    UploadScreen(),
    LikesScreen(),
    AccountScreen()
  ];

  int currentIndex = 0;

  void onChanged(val) {
    setState(() {
      currentIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages.elementAt(currentIndex),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: currentIndex,
            selectedItemColor: Colors.white,
            backgroundColor: Color(0xff000000),
            selectedIconTheme: IconThemeData(
              size: 30,
            ),
            unselectedIconTheme: IconThemeData(size: 30, color: Colors.white),
            onTap: onChanged,
            items: [
              BottomNavigationBarItem(
                icon: currentIndex == 0
                    ? Icon(Icons.home)
                    : Icon(MaterialCommunityIcons.home_outline),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: currentIndex == 1
                    ? Icon(FontAwesome.search)
                    : Icon(AntDesign.search1),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesome.plus_square_o),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: currentIndex == 3
                    ? Icon(Ionicons.md_heart)
                    : Icon(Ionicons.md_heart_empty),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 15,
                  backgroundImage:
                      ExactAssetImage('assets/IMG20200903172945-11.jpeg'),
                ),
                title: Text('Home'),
              ),
            ]),
      ),
    );
  }
}
