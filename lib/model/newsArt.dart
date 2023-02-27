class NewsArt {
  String imageUrl;
  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  NewsArt(
      {required this.imageUrl,
      required this.newsDes,
      required this.newsHead,
      required this.newsUrl,
      required this.newsCnt});

  static NewsArt fromAPItoApp(Map<String, dynamic> article) {
    return NewsArt(
        imageUrl: article['urlToImage'] ??
            'https://www.hindustantimes.com/ht-img/img/2023/02/26/550x309/WhatsApp_Image_2021-09-18_at_09.42.18_1631944439782_1677369630243_1677369630243.jpeg',
        newsDes: article['description'] ?? '',
        newsHead: article['title'] ?? '',
        newsUrl: article['url'] ??
            'https://news.google.com/home?hl=en-US&gl=US&ceid=US:en',
        newsCnt: article['content'] ?? '');
  }
}
