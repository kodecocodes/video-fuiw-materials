import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/article.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  const ArticlePage({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(
        child: Text("Detail Page"),
      ),
    );
  }
}
