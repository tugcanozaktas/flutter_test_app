// Flutter
import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("News App")),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _section("1", const Color.fromARGB(255, 255, 17, 0)),
            const SizedBox(
              height: 10,
            ),
            _section("2", const Color.fromARGB(255, 0, 255, 8)),
            const SizedBox(
              height: 10,
            ),
            _section("3", const Color.fromARGB(255, 0, 140, 255)),
          ],
        ));
  }

  Widget _section(String title, Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Center(child: Text(title)),
    );
  }
}
