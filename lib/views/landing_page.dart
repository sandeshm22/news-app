import 'package:ShortNews/helper/category_data.dart';
import 'package:ShortNews/helper/data_util.dart';
import 'package:ShortNews/model/article_model.dart';
import 'package:ShortNews/model/category_model.dart';
import 'package:ShortNews/views/article_view.dart';
import 'package:ShortNews/views/category_view.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Category> categories = [];

  List<Article> articles = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      categories = getCategories();
      getArticles();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Top HeadLines India'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                /*Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 70,
                  child: ListView.builder(
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CategoryImageWidget(
                          image: categories[index].image,
                          categoryName: categories[index].name,
                        );
                      }),
                ),
                SizedBox(),*/
                Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        itemCount: articles.length,
                        itemBuilder: (context, index) {
                          return ArticleView(article: articles[index]);
                        }))
              ],
            ),
          ),
        ));
  }

  void getArticles() async {
    DataUtil util = DataUtil();
    await util.getArticles();
    setState(() {
      this.articles = util.articles;
    });
  }
}
