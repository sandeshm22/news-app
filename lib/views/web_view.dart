import 'package:ShortNews/model/article_model.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  Article article;

  WebViewPage({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(), body: WebView(initialUrl: this.article.url));
  }
}
