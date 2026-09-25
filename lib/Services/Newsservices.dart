import 'package:dio/dio.dart';
import 'package:news_app/classes/ClassNews.dart';

class Newsservices {
  Dio dio = Dio();

  Future<List<Classnews>> GetTopNews({required String catogory}) async {
    Response response = await dio.get(
      "https://newsapi.org/v2/everything?q=$catogory&apiKey=d7646a568d914813aba6261db797d42d",
    );
    Map<String, dynamic> Json_Date = response.data;
    List<dynamic> articles = Json_Date['articles'];

    List<Classnews> listofnews = [];
    for (var artilce in articles) {
      Classnews Ca = Classnews(
        image: artilce['urlToImage'],
        title: artilce['title'],
        Sub_title: artilce['description'],
        url: artilce['url']
      );
      listofnews.add(Ca);
    }
    return listofnews;
  }
}
