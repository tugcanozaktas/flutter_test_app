import 'package:flutter/cupertino.dart';
import 'package:test_drive/components/news_topic.dart';

class TopicSection extends StatelessWidget {
  const TopicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              NewsTopic(text: "Business"),
              SizedBox(
                height: 25,
              ),
              NewsTopic(text: "Entertainment"),
              SizedBox(
                height: 25,
              ),
              NewsTopic(text: "General"),
              SizedBox(
                height: 25,
              ),
              NewsTopic(text: "Health"),
              SizedBox(
                height: 25,
              ),
              NewsTopic(text: "Science"),
              SizedBox(
                height: 25,
              ),
              NewsTopic(text: "Sports"),
              SizedBox(
                height: 25,
              ),
              NewsTopic(text: "Technology"),
            ],
          ),
        ),
      ),
    );
  }
}
