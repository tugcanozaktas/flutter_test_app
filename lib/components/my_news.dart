import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "package:http/http.dart" as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:news_api_flutter_package/model/article.dart';
import 'package:test_drive/components/image_placeholder.dart';
import 'package:test_drive/components/my_button.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURLBrowser(urlName) async {
  var url = Uri.parse(urlName);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ArticleListVIew extends StatelessWidget {
  const ArticleListVIew({required this.articles, super.key});

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    print(articles.length);
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) => _buildArticleListItem(
        context,
        articles[index],
      ),
    );
  }

  Widget _buildArticleListItem(BuildContext context, Article article) {
    if (article.title == "[Removed]" ||
        (article.source.name == null && article.author == null)) {
      return const SizedBox.shrink();
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textAlign: TextAlign.left,
              article.source.name!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: GoogleFonts.lato().fontFamily,
              ),
            ),
            Text(
              article.title ??
                  article.content ??
                  "There is no description for this news...",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.lato().fontFamily),
            ),
            const SizedBox(
              height: 10,
            ),
            Builder(builder: (context) {
              if (article.urlToImage == null) {
                return Container(
                  width: 550,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  child: const ImagePlaceholder(),
                );
              } else {
                return CachedNetworkImage(
                  imageUrl: article.urlToImage!,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>
                      const ImagePlaceholder(),
                );
              }
            }),
            const SizedBox(
              height: 10,
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  _launchURLBrowser(article.url);
                },
                child: Text(
                  "Read More",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
