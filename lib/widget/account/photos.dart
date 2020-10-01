import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  List<String> photos = [
    'assets/photos/1.jpg',
    'assets/photos/1.jpg',
    'assets/photos/1.jpg',
    'assets/photos/1.jpg',
    'assets/photos/1.jpg',
    'assets/photos/1.jpg',
    'assets/photos/1.jpg',
    'assets/photos/1.jpg',


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
