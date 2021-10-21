import 'package:flutter/material.dart';
import '../models/article.dart';
import '../widgets/article_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (BuildContext context, int index) {
        return ArticleCard(article: articles[index]);
      },
    );
  }
}
