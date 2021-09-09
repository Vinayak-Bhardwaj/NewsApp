import 'package:flutter/material.dart';

class DetailedNews extends StatefulWidget {
  @override
  _DetailedNewsState createState() => _DetailedNewsState();
}

class _DetailedNewsState extends State<DetailedNews> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text("NEWS AT A GLANCE"),
        backgroundColor: Colors.indigo[400],
        elevation: 50.0,
        shadowColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blue[50],
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[

              SizedBox(height: 20.0),

              Text(data["title"], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0)),

              SizedBox(height: 20.0),

              Image.network(
                  (data["image"] != null) ?
                  '${data["image"]?.replaceAll('////', '//')}' :
                  'https://image.shutterstock.com/image-vector/reading-news-on-digital-tablet-260nw-1687528333.jpg',
                  
                ),

                SizedBox(height: 15),

                Divider(color: Colors.grey, thickness: 0.5 ,indent: 10, endIndent: 10,),

                SizedBox(height: 15),

                Text((data["content"] != null) ? '${data["content"]}' : '${data["title"]}', style: TextStyle(color: Colors.black, fontSize:15.0, letterSpacing: 0.5)),
            ],
          ),
        ),
      ),
    );
  }
}