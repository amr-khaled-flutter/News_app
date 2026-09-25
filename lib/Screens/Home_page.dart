import 'package:flutter/material.dart';

import 'package:news_app/Widget/ListofCard.dart';
import 'package:news_app/Widget/NewsViewBuilder.dart';
import 'package:news_app/classes/ClassCard.dart';

List<Classcard> lists = [
  Classcard(image: 'assets/business.avif', text: 'Business'),
  Classcard(image: 'assets/entertaiment.avif', text: 'Entertainment'),
  Classcard(image: 'assets/general.avif', text: 'General'),
  Classcard(image: 'assets/health.avif', text: 'Health'),
  Classcard(image: 'assets/science.avif', text: 'Science'),
  Classcard(image: 'assets/sports.avif', text: 'Sports'),
  Classcard(image: 'assets/technology.jpeg', text: 'Technology'),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News ", style: TextStyle(fontSize: 23, color: Colors.black)),
            Text("Cloud", style: TextStyle(fontSize: 23, color: Colors.yellow)),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: Listofcard()),
          Newsviewbuilder(
            catogory: "general",
          ),
        ],
      ),
    );
  }
}

