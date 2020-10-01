import 'package:flutter/material.dart';

class Photos2 extends StatelessWidget {

  List <String> photos = [
    'assets/photos2/3.jpg',
    'assets/photos2/4.jpg',
    'assets/photos2/6.jpg',
    'assets/photos2/14.jpg',
    'assets/photos2/24.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        padding: EdgeInsets.all(2),
        children: List.generate(photos.length, (index) {
          return Container(
            width: MediaQuery.of(context).size.width / 3,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(photos[index]),
                    fit: BoxFit.cover
                )
            ),
          );
        }),
      ),
    );
  }
}
