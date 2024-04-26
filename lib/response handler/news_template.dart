class News {
  final String name;
  final String author;
  final String title;
  final String url;
  final String imageToUrl;

  const News({
    required this.name,
    required this.author,
    required this.title,
    required this.url,
    required this.imageToUrl,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'name': String name,
        'author': String author,
        'title': String title,
        'url': String url,
        'imageToUrl': String imageToUrl
      } =>
        News(
          name: name,
          author: author,
          title: title,
          url: url,
          imageToUrl: imageToUrl,
        ),
      _ => throw const FormatException('Failed to load News.'),
    };
  }
}
