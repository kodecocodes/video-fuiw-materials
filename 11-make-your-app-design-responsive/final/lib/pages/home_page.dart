import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/article.dart';
import 'package:flutter_ui_widgets/pages/article_page.dart';
import 'package:flutter_ui_widgets/repos/article_repo.dart';
import 'package:flutter_ui_widgets/widgets/article_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Article>> futureArticles;

  @override
  void initState() {
    super.initState();
    futureArticles = ArticleRepo().getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
      future: futureArticles,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              Article article = snapshot.data[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ArticlePage(
                        article: article,
                      ),
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
            child: Text("${snapshot.error}"),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
