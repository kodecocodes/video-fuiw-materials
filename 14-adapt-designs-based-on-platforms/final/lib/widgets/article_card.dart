import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_widgets/models/article.dart';
import 'package:flutter_ui_widgets/widgets/platform_spinner.dart';

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    if (isIOS) {
      return Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: CupertinoColors.systemGrey4),
          ),
        ),
        child: WideCard(article: article),
      );
    }
    return Card(
      margin: EdgeInsets.all(16),
      elevation: 4,
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isTablet = constraints.maxWidth > 600;
          return isTablet
              ? WideCard(article: article)
              : TallCard(article: article);
        },
      ),
    );
  }
}

class TallCard extends StatelessWidget {
  final Article article;

  const TallCard({
    Key key,
    @required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CardBanner(imageUrl: article.urlToImage),
        CardDetail(article: article),
      ],
    );
  }
}

class WideCard extends StatelessWidget {
  final Article article;

  const WideCard({
    Key key,
    @required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CardBanner(
          imageUrl: article.urlToImage,
          isWideCard: true,
        ),
        Expanded(
          child: CardDetail(article: article),
        ),
      ],
    );
  }
}

class CardDetail extends StatelessWidget {
  final Article article;

  const CardDetail({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      height: isPortrait ? 130 : 150,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            article.title,
            style: Theme.of(context).textTheme.headline.copyWith(
                  fontSize: 20,
                ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          // SizedBox(height: 16),
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
  final bool isWideCard;

  const CardBanner({Key key, this.imageUrl, this.isWideCard = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          ),
          child: Container(
            height: isWideCard ? 150 : 200,
            width: isWideCard ? 150 : double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return Center(child: PlatformSpinner());
              },
            ),
          ),
        ),
        Positioned(
          top: isWideCard ? 2 : 10,
          right: isWideCard ? 2 : 10,
          child: IconButton(
            icon: Icon(Icons.bookmark_border, size: 32),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
