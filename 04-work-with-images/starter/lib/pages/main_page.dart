import 'package:flutter/material.dart';
import '../models/article.dart';
import '../widgets/article_card.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI Widgets'),
      ),
      body: Column(
        children: [
          ArticleCard(article: articles[0]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicked');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
