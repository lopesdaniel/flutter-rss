import 'package:flutter/material.dart';
import './home_page.dart';

class ArticlePage extends StatefulWidget {
  final String feed;
  ArticlePage({Key key, this.feed}): super(key: key); 
  @override
  _ArticlePageState createState() => _ArticlePageState(this.feed);
}

class _ArticlePageState extends State<ArticlePage> {
  final String feed;


  _ArticlePageState(this.feed);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Artigos'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(this.feed),
          onPressed: () {
              // Navigator.push(context, 
              // MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
    );
  }
}