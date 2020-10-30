import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/article.dart';

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      elevation: 4,
      child: Column(
        children: <Widget>[
          CardBanner(),
          CardDetail(article: article),
        ],
      ),
    );
  }
}

class CardDetail extends StatelessWidget {
  final Article article;

  const CardDetail({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            article.title,
            style: TextStyle(fontSize: 24),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 16),
          Row(
            children: <Widget>[
              Text(article.source),
              Spacer(),
              Text("45 Comments"),
            ],
          )
        ],
      ),
    );
  }
}

class CardBanner extends StatelessWidget {
  final String imageUrl;

  const CardBanner({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Placeholder(fallbackHeight: 200),
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
            icon: Icon(Icons.bookmark_border, size: 32),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
