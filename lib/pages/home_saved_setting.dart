import 'package:flutter/material.dart';
import 'package:test_drive/components/home_page_sections.dart';
import 'package:test_drive/components/topics_section.dart';
import 'package:test_drive/pages/settings_page.dart';

class HomeSavedSetting extends StatelessWidget {
  final int pageNo;

  const HomeSavedSetting({super.key, required this.pageNo});

  @override
  Widget build(BuildContext context) {
    if (pageNo == 0) {
      return const HomePageSections();
    } else if (pageNo == 1) {
      return const Scaffold();
    }
    return const SettingsPage();
  }
}
