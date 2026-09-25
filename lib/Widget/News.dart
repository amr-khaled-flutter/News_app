import 'package:flutter/material.dart';
import 'package:news_app/Screens/Web_view.dart';
import 'package:news_app/classes/ClassNews.dart';

class News extends StatelessWidget {
  Classnews clsne;

  News({required this.clsne});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WebViewPage(
                url: clsne.url!,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                image: NetworkImage(clsne.image ?? ""),
              ),
            ),
            const SizedBox(height: 7),
            Text(
              clsne.title ?? "",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 7),
            Text(
              clsne.Sub_title ?? "",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}