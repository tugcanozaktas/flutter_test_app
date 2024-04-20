import 'package:flutter/cupertino.dart';
import 'package:test_drive/components/news_topic.dart';

class TopicSection extends StatelessWidget {
  const TopicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 900,
          child: Row(
            children: [
              MyTopic(
                text: "Business",
                onTap: () {},
              ),
              const SizedBox(
                width: 25,
              ),
              MyTopic(
                text: "Entertainment",
                onTap: () {},
              ),
              const SizedBox(
                width: 25,
              ),
              MyTopic(
                text: "General",
                onTap: () {},
              ),
              const SizedBox(
                width: 25,
              ),
              MyTopic(
                text: "Health",
                onTap: () {},
              ),
              const SizedBox(
                width: 25,
              ),
              MyTopic(
                text: "Science",
                onTap: () {},
              ),
              const SizedBox(
                width: 25,
              ),
              MyTopic(
                text: "Sports",
                onTap: () {},
              ),
              const SizedBox(
                width: 25,
              ),
              MyTopic(
                text: "Technology",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
