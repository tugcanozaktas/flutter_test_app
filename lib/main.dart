// Flutter
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("News App")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _section("1", Colors.red),
            _section("2", Colors.green),
            _section("3", Colors.blue),
          ],
        ),
      ),
    );
  }
}

Widget _section(String title, Color color) {
  return Container(
    decoration: BoxDecoration(color: color),
    child: Text(title),
  );
}
