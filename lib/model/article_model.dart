import 'package:flutter/widgets.dart';

class Article {
  String author;
  String title;
  String description;
  String imageurl;
  String content;
  String url;

  Article(
      {@required this.author,
      @required this.title,
      @required this.imageurl,
      @required this.url,
      this.description});
}
