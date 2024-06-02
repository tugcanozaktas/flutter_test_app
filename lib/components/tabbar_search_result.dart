import 'package:flutter/material.dart';
import 'package:news_api_flutter_package/model/article.dart';
import 'package:news_api_flutter_package/news_api_flutter_package.dart';
import 'package:test_drive/components/tabbar_search_view.dart';

class TabBarSearchSection extends StatelessWidget {
  final String pageName;
  const TabBarSearchSection({
    required this.pageName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final NewsAPI newsAPI = NewsAPI(apiKey: "f29f03ecfd244a0f83b52dfcc69bedca");
    return FutureBuilder<List<Article>>(
      future: newsAPI.getTopHeadlines(
          pageSize: 50, country: "us", category: pageName),
      builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
        return snapshot.connectionState == ConnectionState.done
            ? snapshot.hasData
                ? TabBarListView(articles: snapshot.data!)
                : const Text("Error")
            : const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                ],
              );
      },
    );
  }
}
