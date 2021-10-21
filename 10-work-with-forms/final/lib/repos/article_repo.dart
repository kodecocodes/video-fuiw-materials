import '../api/article_api.dart';
import '../models/article.dart';

class ArticleRepo {
  final articleApi = ArticleAPI();

  Future<List<Article>> getArticles() => articleApi.fetchArticles();
}
