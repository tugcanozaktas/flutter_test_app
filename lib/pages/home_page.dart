import "package:flutter/material.dart";
import "package:test_drive/components/my_drawer.dart";
import "package:test_drive/components/topics_section.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var apiKey = "f29f03ecfd244a0f83b52dfcc69bedca";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("Hot News"),
      ),
      drawer: const MyDrawer(),
      body: const Column(
        children: [
          TopicSection(),
        ],
      ),
    );
  }
}
