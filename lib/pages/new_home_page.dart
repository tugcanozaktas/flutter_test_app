import "package:flutter/material.dart";
import "package:test_drive/components/login_or_register.dart";
import "package:test_drive/components/my_drawer.dart";
import "package:test_drive/components/my_logo.dart";
import "package:test_drive/components/my_search_bar.dart";
import "package:test_drive/components/topics_section.dart";
import "package:test_drive/pages/settings_page.dart";

class NewHomePage extends StatefulWidget {
  const NewHomePage({super.key});

  @override
  State<NewHomePage> createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  bool dataRetrieved = false;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var apiKey = "f29f03ecfd244a0f83b52dfcc69bedca";

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
      body: const TopicSection(),
      bottomNavigationBar: NavigationBar(
        destinations: [NewHomePage(), SettingsPage(), LoginOrRegister()],
      ),
    );
  }
}
