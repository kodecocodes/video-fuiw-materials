import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/article.dart';
import 'package:flutter_ui_widgets/pages/article_page.dart';
import 'package:flutter_ui_widgets/pages/create_article.dart';
import 'package:flutter_ui_widgets/repos/article_repo.dart';
import 'package:flutter_ui_widgets/widgets/article_card.dart';
import 'package:flutter_ui_widgets/widgets/platform_spinner.dart';

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
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Image.asset(
          "assets/images/logo_dark.png",
          width: 180,
        ),
        trailing: IconButton(
          icon: Icon(CupertinoIcons.add_circled),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateArticle(),
                fullscreenDialog: true,
              ),
            );
          },
        ),
      ),
      child: FutureBuilder<List<Article>>(
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
            child: PlatformSpinner(),
          );
        },
      ),
    );
  }
}
