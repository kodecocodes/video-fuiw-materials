import 'package:flutter_ui_widgets/api/article_api.dart';
import 'package:flutter_ui_widgets/models/article.dart';

class ArticleRepo {
  final articleApi = ArticleAPI();

  Future<List<Article>> getArticles() => articleApi.fetchArticles();
}
