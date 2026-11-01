


import 'package:dio/dio.dart';
import '../models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  static const String _apiKey = '3c88955c487e4d9db668f011dd85e737';

  Future<List<ArticleModel>> getNews({String category = 'general'}) async {
    try {
      final response = await dio.get(
        'https://newsapi.org/v2/top-headlines',
        queryParameters: {
          'apiKey': _apiKey,
          'country': 'us',
          'category': category,
        },
      );

      final List articles = response.data['articles'];
      return articles.map((a) => ArticleModel.fromJson(a)).toList();
    } catch (e) {
      return [];
    }
  }
}