import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:red_carpet_assignment/HomeScreen/category_headlines.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int page = 0;

  List<String> appBarTitles = [
    "Buisness Headlines",
    "Enterntainment Headlines",
    "Health Headlines",
    "Science Headlines",
    "Sports Headlines",
    "Technology Headlines",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitles[page], style: TextStyle(fontSize: 21)),
        backgroundColor: Colors.indigo[400],
        elevation: 50.0,
        shadowColor: Colors.black,
      ),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: CategoryHeadline(category: (page == 0) ? "business" : (page == 1) ? "entertainment" : (page == 2) ? "health" : (page == 3) ? "science" : (page == 4) ? "sports" : "technology"),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: size.height*0.073,
        buttonBackgroundColor: Colors.red[100],
        backgroundColor: Colors.white10,
        color: Colors.grey,
        animationDuration: Duration(milliseconds: 500),
        animationCurve: Curves.linearToEaseOut,
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        items: <Widget>[
          ImageIcon(
              AssetImage("assets/business.png"),
              size: size.height*0.03902,
            ),
            ImageIcon(
              AssetImage("assets/entertainment.png"),
              size: size.height*0.03902,
            ),
            ImageIcon(
              AssetImage("assets/health.png"),
              size: size.height*0.03902,
            ),
            ImageIcon(
              AssetImage("assets/science.png"),
              size: size.height*0.03902,
            ),
            ImageIcon(
              AssetImage("assets/sports.png"),
              size: size.height*0.03902,
            ),
            ImageIcon(
              AssetImage("assets/tech.png"),
              size: size.height*0.03902,
            ),
        ],
      ),
    );
  }
}