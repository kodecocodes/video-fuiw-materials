import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/article.dart';
import 'package:flutter_ui_widgets/widgets/article_card.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          width: 180,
        ),
      ),
      // body: ListView(
      //   children: <Widget>[
      //     ArticleCard(article: articles[0]),
      //     ArticleCard(article: articles[1]),
      //     ArticleCard(article: articles[2]),
      //   ],
      // ),
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   // childAspectRatio: 0.95,
      //   children: <Widget>[
      //     ArticleCard(article: articles[0]),
      //     ArticleCard(article: articles[1]),
      //     ArticleCard(article: articles[2]),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (BuildContext context, int index) {
          return ArticleCard(article: articles[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Clicked");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
