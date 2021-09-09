import 'package:flutter/material.dart';
import 'package:red_carpet_assignment/Services/news_service.dart';
import 'package:red_carpet_assignment/Shared/loading.dart';
import 'package:red_carpet_assignment/Shared/news_card.dart';

class CategoryHeadline extends StatefulWidget {

  String category;

  CategoryHeadline({required this.category});

  @override
  _CategoryHeadlineState createState() => _CategoryHeadlineState();
}

class _CategoryHeadlineState extends State<CategoryHeadline> {
  @override
  Widget build(BuildContext context) {

    NewsService service = NewsService(category: widget.category);

    return FutureBuilder(
      future: service.getNews(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
            itemCount: service.newsLength,
            itemBuilder: (context, index) {
              return NewsCard(imageLink: service.News[index].imageLink,newsTitle: service.News[index].title, description: service.News[index].description, content: service.News[index].content);
            },
          );
        }
        else{
              return Loading();
            }
      },
    );
  }
}