import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text("Test1"),
            Text("Test2"),
            Text("Test3"),
            Text("Test4"),
            Text("Test5"),
            Text("Test6")
          ],
        )
      ],
    );
  }
}
