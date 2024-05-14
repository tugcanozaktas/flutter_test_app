import "package:flutter/material.dart";

class MyDivider extends StatelessWidget {
  final String text;
  const MyDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 100.0, right: 20.0),
            child: Divider(
                color: Theme.of(context).colorScheme.tertiary,
                height: 36,
                thickness: 2)),
      ),
      Text(
        "or $text with",
        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
      ),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 100.0),
            child: Divider(
              color: Theme.of(context).colorScheme.tertiary,
              height: 36,
              thickness: 2,
            )),
      ),
    ]);
  }
}
