import 'package:flutter/material.dart';

class TabBarTitle extends StatelessWidget {
  final String tabNo;
  const TabBarTitle({super.key, required this.tabNo});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        width: (tabNo == "Business" ? 3 : 0),
        color: (tabNo == "Business"
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.inversePrimary),
      ))),
      child: Text(
        "Business",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: (tabNo == "Business"
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.inversePrimary),
        ),
      ),
    );
  }
}
