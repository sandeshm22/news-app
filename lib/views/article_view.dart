import 'package:ShortNews/model/article_model.dart';
import 'package:ShortNews/views/web_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArticleView extends StatelessWidget {
  Article article;

  ArticleView({this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WebViewPage(article: this.article)))
            },
        child: Container(
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  CachedNetworkImage(imageUrl: this.article.imageurl),
                  //network(this.article.imageurl),
                  Text(this.article.title,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(),
                  Text(this.article.description,
                      style: TextStyle(color: Colors.black54))
                ]))));
  }
}
