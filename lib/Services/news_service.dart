import 'package:http/http.dart';
import 'package:red_carpet_assignment/Models/news_model.dart';
import 'dart:convert';

const API_KEY = "acc6c7e1be91477bba7be4d79748a695";

class NewsService {
  String? title;
  String? description;
  String? content;
  String? image;
  int? newsLength;
  String category;


  NewsService({required this.category});


  var News = <NewsModel>[];
  Future<void> getNews() async {
    try {
      String categoryUrlNews = 'https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=$API_KEY';
      Response response = await get(Uri.parse(categoryUrlNews));
      Map data = jsonDecode(response.body);

      List articles = data['articles'];
      for (int i = 0; i < articles.length; i++) {
        News.add(NewsModel(
            imageLink: articles[i]['urlToImage'], content: articles[i]['content'], description: articles[i]['description'], title: articles[i]['title']));
      }
      newsLength = articles.length;
    } catch (e) {
      print(e.toString());
    }
  }
}