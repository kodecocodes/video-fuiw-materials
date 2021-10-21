import '../models/article.dart';

class ArticleAPI {
  Future<List<Article>> fetchArticles() async {
    try {
      const success = true;
      if (!success) {
        throw Exception('Failed to load Articles!');
      }
      final response =
          await Future.delayed(const Duration(seconds: 10), () => articles);
      return response;
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
