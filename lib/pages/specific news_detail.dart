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
    );
  }
}
