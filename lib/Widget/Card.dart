import 'package:flutter/material.dart';
import 'package:news_app/Screens/Watching_screen.dart';
import 'package:news_app/classes/ClassCard.dart';

class Cards extends StatelessWidget {
  Classcard ca;
  Cards({required this.ca});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contex) {
              return WatchingScreen(catogory: ca.text);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: 180,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(ca.image)),
        ),
        child: Center(
          child: Text(
            ca.text,
            style: TextStyle(fontSize: 23, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
