import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_api_flutter_package/model/article.dart';
import 'package:test_drive/components/Home%20Page/App%20Bar/my_logo.dart';
import 'package:test_drive/components/Home%20Page/App%20Bar/my_search_bar.dart';

String getFormattedDate(String dtStr) {
  var dt = DateTime.parse(dtStr);

  return "${dt.day.toString().padLeft(2, '0')}/${dt.month.toString().padLeft(2, '0')}/${dt.year}, ${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}";
}

class SpecificNewsDetail extends StatelessWidget {
  final Article article;
  const SpecificNewsDetail({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButton(
              color: Theme.of(context).colorScheme.secondary,
            ),
            MyLogo(),
            MySearchBar()
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Text(
              article.title!,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.onInverseSurface,
            ),
            child: Text(article.source.name!),
          ),
          Image.network(article.urlToImage!),
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
            child: Row(
              children: [
                Text(
                  "Published on: ",
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  getFormattedDate(article.publishedAt!),
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(children: [
            Text(
              article.description!,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              article.content!,
              style: const TextStyle(fontSize: 20),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ])
        ]),
      ),
    );
  }
}
