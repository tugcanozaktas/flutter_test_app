import 'package:flutter/material.dart';
import 'package:test_drive/pages/specific_news_page.dart';

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
            builder: (context) => SpecificNews(
              pageName: text,
            ),
          ),
        ),
        child: SizedBox(
          height: 50,
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 3,
                        color: Theme.of(context).colorScheme.secondary))),
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
