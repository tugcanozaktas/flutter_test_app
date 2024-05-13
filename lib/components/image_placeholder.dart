import 'package:flutter/material.dart';

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text("Can't get this image right now",
            style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.inversePrimary)),
        Text(":(",
            style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.inversePrimary)),
        const SizedBox(
          height: 15,
        ),
        const Icon(
          Icons.error,
          size: 20,
        ),
      ],
    );
  }
}
