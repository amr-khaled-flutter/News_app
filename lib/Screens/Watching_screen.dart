import 'package:flutter/material.dart';
import 'package:news_app/Widget/NewsViewBuilder.dart';

class WatchingScreen extends StatelessWidget {
   String catogory;
  WatchingScreen({required this.catogory});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "News $catogory",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          Newsviewbuilder(
            catogory: catogory,
          ),
        ],
      ),
    );
  }
}