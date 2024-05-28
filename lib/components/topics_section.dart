import 'package:flutter/cupertino.dart';
import 'package:test_drive/components/news_topic.dart';

class TopicSection extends StatelessWidget {
  const TopicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              NewsTopic(text: "Business"),
              SizedBox(
                width: 25,
              ),
              NewsTopic(text: "Entertainment"),
              SizedBox(
                width: 25,
              ),
              NewsTopic(text: "General"),
              SizedBox(
                width: 25,
              ),
              NewsTopic(text: "Health"),
              SizedBox(
                width: 25,
              ),
              NewsTopic(text: "Science"),
              SizedBox(
                width: 25,
              ),
              NewsTopic(text: "Sports"),
              SizedBox(
                width: 25,
              ),
              NewsTopic(text: "Technology"),
            ],
          ),
        ),
      ),
    );
  }
}
