import 'package:flutter/material.dart';
import 'package:news_app/Services/Newsservices.dart';
import 'package:news_app/Widget/Listofnews.dart';
import 'package:news_app/classes/ClassNews.dart';

class Newsviewbuilder extends StatefulWidget {
  final String catogory;
  Newsviewbuilder({required this.catogory});

  @override
  State<Newsviewbuilder> createState() => _NewsviewbuilderState();
}

class _NewsviewbuilderState extends State<Newsviewbuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = Newsservices().GetTopNews(catogory: widget.catogory);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Classnews>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Listofnews(articles: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Text("Ops there was an error , try late"),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
