// https://newsapi.org/v2/top-headlines/sources?apiKey=303ba11eb3ee4064afe847c31026ec2a
import 'dart:convert';
import 'dart:math';
// import 'dart:html';

import 'package:http/http.dart';
import 'package:new_sample/model/newsArt.dart';

class FetchNews{
  static List sourcesID=[
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
  static Future<NewsArt> fetchNews() async{
    final _random=new Random();
    var sourceID=sourcesID[_random.nextInt(sourcesID.length)];
    print(sourceID);

    Response response=await get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=$sourceID&apiKey=0772dbb7594547b49180c31312121245"));
    Map body_data=jsonDecode(response.body);
    List articles=body_data["articles"];
    // print(articles);

    final _Newrandom=new Random();
    var myarticle=articles[_random.nextInt(articles.length)];
    print(myarticle);
    return NewsArt.fromAPItoapp(myarticle);
  }
}