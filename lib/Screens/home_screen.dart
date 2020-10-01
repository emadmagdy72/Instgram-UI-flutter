import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instgram/widget/home/Circle_mystory.dart';
import 'file:///E:/Projects/instgram/lib/widget/home/custom_app_bar.dart';
import 'package:instgram/widget/home/circle_story.dart';
import 'package:instgram/widget/home/comments.dart';
import 'package:instgram/widget/home/down_list_tile.dart';
import 'package:instgram/widget/home/down_post.dart';
import 'package:instgram/widget/home/likes.dart';
import 'package:instgram/widget/home/list_tile.dart';
import 'package:instgram/widget/home/photo_post.dart';
import 'package:instgram/widget/home/time.dart';
import 'package:instgram/widget/home/write_a_comment.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff000000),
        body: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MyStory(),
                        StoryCircle(
                          image: 'assets/stories/trika.jpg',
                          title: 'aboutrika',
                        ),
                        StoryCircle(
                          image: 'assets/stories/walid_soliman.jpg',
                          title: 'walidsoliman',
                        ),
                        StoryCircle(
                          image: 'assets/stories/moshnaway.jpg',
                          title: 'm.elshenawy1',
                        ),
                        StoryCircle(
                          image: 'assets/stories/messi.jpg',
                          title: 'leomessi',
                        ),
                        StoryCircle(
                          image: 'assets/stories/mosalah.png',
                          title: 'mosalah',
                        ),
                        StoryCircle(
                          image: 'assets/stories/ronaldo.jpg',
                          title: 'cristiano',
                        ),
                        StoryCircle(
                          image: 'assets/stories/inesta.jpg',
                          title: 'andresiniesta8',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.2,
                    color: Color(0xff1d1c1c),
                  ),
                  HeadPost(
                    image: 'assets/stories/trika.jpg',
                    title: 'aboutrikamohamemed',
                  ),
                  PhotoPost(
                    image: 'assets/posts/abotrika.jpg',
                  ),
                  DownPost(),
                  Likes(
                    num: '10,500,256 likes',
                  ),
                  Comments(
                    numbers: '12,845',
                  ),
                  DownListTile(),
                  Time(title: '4 hours ago .',),
                  SizedBox(height: 15,),
                  HeadPost(image: 'assets/stories/mosalah.png',title: 'mosalah',),
                  PhotoPost(image: 'assets/posts/salah.jpeg',),
                  DownPost(),
                  Likes(
                    num: '20,524,858 likes',
                  ),
                  Commenting(),
                  Comments(
                    numbers: '50,254',
                  ),
                  DownListTile(),
                  Time(title: '2 hours ago .',),
                  SizedBox(height: 15,),
                  HeadPost(
                    image: 'assets/stories/messi.jpg',
                    title: 'leomessi',
                  ),
                  PhotoPost(
                    image: 'assets/posts/messssssi.png',
                  ),
                  DownPost(),
                  Likes(
                    num: '33,545,276 likes',
                  ),
                  Comments(
                    numbers: '100,845',
                  ),
                  DownListTile(),
                  Time(title: '1 hours ago .',),
                  SizedBox(height: 15,),
                  HeadPost(
                    image: 'assets/stories/walid_soliman.jpg',
                    title: 'walidsoliman',
                  ),
                  PhotoPost(
                    image: 'assets/posts/soliman.png',
                  ),
                  DownPost(),
                  Likes(
                    num: '5,545,276 likes',
                  ),
                  Comments(
                    numbers: '10,895',
                  ),
                  DownListTile(),
                  Time(title: '1 hours ago .',),

                ],
              ),
            )
          ],
        ));
  }
}
