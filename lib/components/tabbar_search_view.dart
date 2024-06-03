import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_api_flutter_package/model/article.dart';
import 'package:test_drive/pages/specific%20news_detail.dart';

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
      height: 240,
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
    if (article.urlToImage == null || article.title == null) {
      return const SizedBox.shrink();
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.onBackground),
      height: 150,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              article.urlToImage!,
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            width: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  article.title!,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SpecificNewsDetail(
                                  article: article,
                                )));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).colorScheme.onInverseSurface),
                  ),
                  child: Text(
                    "Continue to read",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
