import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:red_carpet_assignment/HomeScreen/detailed_news.dart';
import 'package:red_carpet_assignment/HomeScreen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "NewsApp",
      theme: ThemeData(
        primaryColor: Color(0xFF6F35A5),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(name: "/Home", page: () => Home()),
        GetPage(name: "/DetailedNews", page: () => DetailedNews()),
      ],
      initialRoute: "/Home",
      debugShowCheckedModeBanner: false,
    );
  }
}