import 'package:flutter/material.dart';
import 'package:news_api_flutter_package/model/article.dart';
import 'package:test_drive/components/my_logo.dart';
import 'package:test_drive/components/my_search_bar.dart';

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
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [MyLogo(), MySearchBar()],
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
          Image.network(article.urlToImage!)
        ]),
      ),
    );
  }
}
