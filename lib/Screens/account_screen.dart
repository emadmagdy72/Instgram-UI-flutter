import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instgram/widget/account/Text.dart';
import 'package:instgram/widget/account/cricle_photo.dart';
import 'package:instgram/widget/account/followers.dart';
import 'file:///E:/Projects/instgram/lib/widget/account/photos.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 60,
            color: Color(0xff1a1a1a),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  'emadmagdy72',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Image(
                  image: ExactAssetImage('assets/blueEee.png'),
                  height: 19,
                  width: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 170,
                ),
                Icon(
                  Icons.dehaze,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
                children: [
                  Container(
                    height: 300,
                    color: Color(0xff1a1a1a),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            CirclePhoto(),
                            SizedBox(
                              width: 50,
                            ),
                            Followers(
                              num: '342',
                              title: 'Posts',
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Followers(
                              num: '250M',
                              title: 'Followers',
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Followers(
                              num: '5,572',
                              title: 'Following',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Bio(
                          title: 'Emad Magdy',
                        ),
                        Bio(
                          title: 'FCIS_MU',
                        ),
                        Bio(
                          title: 'Flutter developer',
                        ),
                        Bio(
                          title: 'Al Ahly & Liverpool  \u{2764} \u{2764}',
                        ),
                        SizedBox(height: 10,),
                        RaisedButton(
                          color: Colors.black,
                          onPressed: () {},
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(color: Colors.white,
                              fontSize: 16
                            ),
                          ),
                          padding: EdgeInsets.only(left: 150,right: 150,),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(width: 1.5,color:Color(0xff555555) )
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    height: 0.5,
                    color: Color(0xff555555),
                  ),
                  Container(
                    height: 50,
                    color: Color(0xff1a1a1a),
                    child: TabBar(
                      tabs: [
                        Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Icon(
                              Icons.grid_on,
                              color: Colors.white,
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Icon(
                            MaterialCommunityIcons.account_box_outline,
                            color: Colors.white,
                          ),
                        )
                      ],
                      unselectedLabelColor: const Color(0xffacb3bf),
                      indicatorColor: Colors.white,
                      labelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 1.0,
                      isScrollable: false,
                      controller: _tabController,
                    ),
                  ),
                  Container(
                    height: 350,
                    color: Colors.black,
                    child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          Photos(),
                          Photos()
                        ]),
                  )
                ],
              ),
          ),
        ],
      ),
    );
  }
}
