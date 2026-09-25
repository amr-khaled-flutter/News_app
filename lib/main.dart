import 'package:flutter/material.dart';
import 'package:news_app/Screens/Home_page.dart';

void main() {
  runApp(News_app());
}

class News_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

