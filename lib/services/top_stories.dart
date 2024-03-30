import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=f29f03ecfd244a0f83b52dfcc69bedca'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final String name;
  final String author;
  final String title;
  final String imageUrl;
  final String url;
  final String description;

  const Album({
    required this.name,
    required this.author,
    required this.title,
    required this.imageUrl,
    required this.url,
    required this.description,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return switch (json["articles"][0]) {
      {
        'source': {"name": String name},
        'author': String author,
        'title': String title,
        "description": String description,
        "url": String url,
        "urlToImage": String imageUrl,
      } =>
        Album(
          name: name,
          author: author,
          title: title,
          imageUrl: imageUrl,
          url: url,
          description: description,
        ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  width: 300,
                  child: Column(children: [
                    Text(
                      snapshot.data!.name,
                      textAlign: TextAlign.start,
                    ),
                    Image.network(snapshot.data!.imageUrl),
                    Text(snapshot.data!.title),
                  ]),
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
