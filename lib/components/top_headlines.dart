import 'package:flutter/material.dart';
import 'package:news_api_flutter_package/model/article.dart';
import 'package:news_api_flutter_package/news_api_flutter_package.dart';
import 'package:test_drive/components/my_news.dart';

class TopHeadlinesTabBody extends StatelessWidget {
  final String pageName;
  final NewsAPI newsAPI;
  final String? country;
  const TopHeadlinesTabBody(
      {required this.pageName,
      required this.newsAPI,
      super.key,
      required this.country});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
      future:
          newsAPI.getTopHeadlines(country: country ?? "us", category: pageName),
      builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
        return snapshot.connectionState == ConnectionState.done
            ? snapshot.hasData
                ? ArticleListVIew(articles: snapshot.data!)
                : const Text("Error")
            : const Text("Progress");
      },
    );
  }
}
