import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_drive/response%20handler/news_template.dart';

class NavigateToPage extends StatefulWidget {
  final String pageName;
  const NavigateToPage({super.key, required this.pageName});

  @override
  State<NavigateToPage> createState() => _NavigateToPageState();
}

class _NavigateToPageState extends State<NavigateToPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pageName),
      ),
    );
  }
}
