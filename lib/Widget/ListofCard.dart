import 'package:flutter/material.dart';
import 'package:news_app/Screens/Home_page.dart';
import 'package:news_app/Widget/Card.dart';

class Listofcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: lists.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Cards(ca: lists[index]);
        },
      ),
    );
  }
}
