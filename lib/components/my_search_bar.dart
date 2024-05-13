import "package:flutter/material.dart";
import "package:test_drive/pages/search_results.dart";

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      onSubmitted: (value) => Navigator.push(context,
          MaterialPageRoute(builder: (context) => SearchResults(input: value))),
      leading: const Icon(Icons.search),
    );
  }
}
