import 'package:flutter/material.dart';
import 'package:noticias_provider/src/widgets/lista_noticias.dart';
import 'package:provider/provider.dart';

import '../services/news_service.dart';

class Tap1Page extends StatelessWidget {
   
  const Tap1Page({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);
    return Scaffold(
      body: ListaNoticias(newsService.headlines)
    );
  }
}