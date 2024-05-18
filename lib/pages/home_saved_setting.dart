import 'package:flutter/material.dart';
import 'package:test_drive/components/topics_section.dart';
import 'package:test_drive/pages/settings_page.dart';

class HomeSavedSetting extends StatelessWidget {
  final int pageNo;

  const HomeSavedSetting({super.key, required this.pageNo});

  @override
  Widget build(BuildContext context) {
    if (pageNo == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const TopicSection()),
        ),
      );
    } else if (pageNo == 2) {
      return const SettingsPage();
    }
    return Scaffold();
  }
}
