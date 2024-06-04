import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_api_flutter_package/model/article.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURLBrowser(urlName) async {
  var url = Uri.parse(urlName);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ArticleListVIew extends StatefulWidget {
  const ArticleListVIew({required this.articles, super.key});

  final List<Article> articles;

  @override
  State<ArticleListVIew> createState() => _ArticleListVIewState();
}

class _ArticleListVIewState extends State<ArticleListVIew> {
  final yourScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Scrollbar(
        interactive: true,
        controller: yourScrollController,
        child: ListView.builder(
          controller: yourScrollController,
          scrollDirection: Axis.horizontal,
          itemCount: widget.articles.length,
          itemBuilder: (context, index) => _buildArticleListItem(
            context,
            widget.articles[index],
          ),
        ),
      ),
    );
  }

  Widget _buildArticleListItem(BuildContext context, Article article) {
    if (article.title == "[Removed]" ||
        (article.source.name == null && article.author == null)) {
      return const SizedBox.shrink();
    }
    if (article.urlToImage == null) {
      return const SizedBox.shrink();
    }
    return Container(
      width: 430,
      margin: const EdgeInsets.only(bottom: 10, right: 15, left: 15),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(article.urlToImage!, scale: 1),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
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
              ),
            ),
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    blurRadius: 15,
                    spreadRadius: 30,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  TextButton(
                    onPressed: () {
                      Provider.of(context, listen: false);
                      _launchURLBrowser(article.url);
                    },
                    child: Text(
                      "Read More",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
