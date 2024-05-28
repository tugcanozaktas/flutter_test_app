import 'package:flutter/material.dart';
import 'package:test_drive/components/general_headlines.dart';
import 'package:test_drive/components/topics_section.dart';
import 'package:test_drive/pages/specific_news_page.dart';

class HomePageSections extends StatelessWidget {
  const HomePageSections({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        GeneralHeadlines(),
        TopicSection(),
      ],
    );
  }
}
