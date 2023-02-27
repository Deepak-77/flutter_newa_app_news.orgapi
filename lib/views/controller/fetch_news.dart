//https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=5f3ce9f025254331a97d8d0c4aa3a99a
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:news_app_flutter_news_orgapi/model/newsArt.dart';

class FetchNews {
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];
  static Future<NewsArt> fetchNews() async {
    final _random = Random();
    var sourceID = sourcesId[_random.nextInt(sourcesId.length)];
    print(sourceID);

    Response response = await get(
      Uri.parse(
          'https://newsapi.org/v2/top-headlines?sources=$sourceID&apiKey=5f3ce9f025254331a97d8d0c4aa3a99a'),
    );
    Map body_data = jsonDecode(response.body);
    List articles=body_data["articles"];
    print(articles);

    final _Newrandom = Random();
    var myArticles = articles[_Newrandom.nextInt(articles.length)];
    print(myArticles);

   return NewsArt.fromAPItoApp(myArticles);
  }
}
