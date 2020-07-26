import 'dart:convert';

import 'package:ShortNews/model/article_model.dart';

import 'package:http/http.dart' as http;

class DataUtil {
  List<Article> articles = [];
  void getArticles() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=in&apiKey=9eea13fc071541f294b0578d572baa33';
    //
    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    //print(jsonData);
    if (jsonData['status'] == "ok") {
      print('ok');
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null &&
            element['description'] != null &&
            element['title'] != null) {
          Article article = Article(
            author: element['author'],
            title: element['title'],
            imageurl: element["urlToImage"],
            url: element['url'],
            description: element["description"],
          );

          //description: element['description'],
          //urlToImage: element['urlToImage'],
          articles.add(article);
        }
      });
      //print(articles);
    }
  }
}
