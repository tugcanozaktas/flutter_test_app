import 'package:news_api_flutter_package/news_api_flutter_package.dart';
import 'package:flutter/material.dart';
import 'package:test_drive/components/top_headlines.dart';

class SpecificNews extends StatefulWidget {
  final String pageName;

  SpecificNews({super.key, required this.pageName});

  @override
  State<SpecificNews> createState() => _SpecificNewsState();
}

class _SpecificNewsState extends State<SpecificNews> {
  final NewsAPI _newsAPI = NewsAPI(apiKey: "f29f03ecfd244a0f83b52dfcc69bedca");
  List<String> locations = ["US", "TR"];
  String? country;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Center(
            child: Text(widget.pageName),
          ),
          leading: DropdownButton<String>(
            value: country,
            onChanged: (newValue) {
              setState(() {
                country = newValue;
              });
            },
            items: <String>['US', 'TR', 'GB', 'CH'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TopHeadlinesTabBody(
            newsAPI: _newsAPI, pageName: widget.pageName, country: country),
      ),
    );
  }
}
