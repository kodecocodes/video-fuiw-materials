import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'article_page.dart';
import '../repos/article_repo.dart';
import '../models/article.dart';
import '../widgets/article_card.dart';
import 'create_another_article.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Article>>? _futureArticles;

  @override
  void initState() {
    super.initState();
    _futureArticles = ArticleRepo().getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Image.asset(
          'assets/images/logo_dark.png',
          width: 180,
        ),
        // For only HomePage
        trailing: IconButton(
          icon: const Icon(CupertinoIcons.add_circled),
          onPressed: () {
            Navigator.push<void>(
              context,
              MaterialPageRoute(
                builder: (context) => const CreateAnotherArticle(),
              ),
            );
          },
        ),
        // End
      ),
      child: FutureBuilder<List<Article>>(
        future: _futureArticles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (BuildContext context, int index) {
                final article = snapshot.data![index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArticlePage(article: article),
                      ),
                    );
                  },
                  child: ArticleCard(article: article),
                );
              },
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error}',
                style: const TextStyle(fontSize: 24),
              ),
            );
          }
          return const Center(
            child: CupertinoActivityIndicator(radius: 24),
          );
        },
      ),
    );
  }
}
