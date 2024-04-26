import 'package:flutter/material.dart';
import 'package:test_drive/components/navigate_to_page.dart';

class NewsTopic extends StatelessWidget {
  final String text;
  const NewsTopic({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NavigateToPage(
              pageName: text,
            ),
          ),
        ),
        child: Container(
          width: 500,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.secondary),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
