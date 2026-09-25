import 'package:flutter/material.dart';
import 'package:news_app/Widget/News.dart';
import 'package:news_app/classes/ClassNews.dart';

class Listofnews extends StatelessWidget {
  List<Classnews> articles;
  Listofnews({required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return News(clsne: articles[index]);
      }),
    );
  }
}
