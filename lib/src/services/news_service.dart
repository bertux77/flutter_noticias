import 'package:flutter/material.dart';
import '../models/news_models.dart';
import 'package:http/http.dart' as http;


final _URL_NEWS = 'https://newsapi.org/v2';
final _APIKEY = '0070ba5f14dc4c839d417fc6bb743816';
class NewsService with ChangeNotifier {
  List<Article> headlines = [];
  
  NewsService(){
    getTopHeadlines();
  }

  getTopHeadlines() async{
    // conectamos con el endpoint
    final url = '$_URL_NEWS/top-headlines?apiKey=$_APIKEY&country=us';
    final resp = await http.get(Uri.parse(url));

    final newsResponse = NewsResponse.fromJson(resp.body);
    headlines.addAll(newsResponse.articles);
    notifyListeners();
  }
}