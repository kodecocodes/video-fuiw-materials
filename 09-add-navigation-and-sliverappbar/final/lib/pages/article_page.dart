import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/article.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  const ArticlePage({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            floating: true,
            elevation: 50,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "${article.urlToImage}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ArticleMeta(article: article),
                ArticleContent(article: article),
                ArticleTags(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  height: 16,
                  color: Colors.grey[300],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ArticleMeta extends StatelessWidget {
  const ArticleMeta({
    Key key,
    @required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text(
            "${article.title}",
            style: Theme.of(context).textTheme.display1.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 16),
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(article.author),
            subtitle: Text(article.publishedAt),
            trailing: RaisedButton(
              onPressed: () {},
              child: Text(
                "Subscribe",
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class ArticleContent extends StatelessWidget {
  const ArticleContent({
    Key key,
    @required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        children: <Widget>[
          Text(
            "\"${article.description}\"",
            style: Theme.of(context).textTheme.subtitle.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[600],
                  fontSize: 20,
                ),
          ),
          SizedBox(height: 16),
          Text(
            article.content,
            style: TextStyle(fontSize: 18, height: 1.5),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class ArticleTags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 8,
        children: <Widget>[
          Chip(label: Text("Science")),
          Chip(label: Text("Technology")),
          Chip(label: Text("Devices")),
        ],
      ),
    );
  }
}
