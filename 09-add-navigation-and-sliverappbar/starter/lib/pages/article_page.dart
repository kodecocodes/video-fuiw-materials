import 'package:flutter/material.dart';
import '../models/article.dart';

class ArticlePage extends StatelessWidget {
  final Article? article;

  const ArticlePage({Key? key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail page'),
      ),
      body: const Center(
        child: Text('Detail Page'),
      ),
    );
  }
}
