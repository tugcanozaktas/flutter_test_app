import 'package:flutter/cupertino.dart';
import 'package:news_api_flutter_package/model/article.dart';

class TabBarListView extends StatefulWidget {
  final List<Article> articles;
  const TabBarListView({super.key, required this.articles});

  @override
  State<TabBarListView> createState() => _TabBarListViewState();
}

class _TabBarListViewState extends State<TabBarListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 450,
      height: 290,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.articles.length,
        itemBuilder: (context, index) => _buildArticleListItem(
          context,
          widget.articles[index],
        ),
      ),
    );
  }

  Widget _buildArticleListItem(BuildContext context, Article article) {
    return SizedBox(
      height: 100,
      child: Text(article.title!),
    );
  }
}
