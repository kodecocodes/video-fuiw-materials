import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/article.dart';
import 'package:flutter_ui_widgets/widgets/article_card.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI Widgets"),
      ),
      body: Column(
        children: <Widget>[
          ArticleCard(
            article: articles[0],
          ),
        ],
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
