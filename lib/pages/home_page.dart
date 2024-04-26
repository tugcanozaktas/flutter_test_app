import "package:flutter/material.dart";
import "package:test_drive/components/my_drawer.dart";
import "package:test_drive/components/topics_section.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool dataRetrieved = false;

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
      body: const TopicSection(),
    );
  }
}
