import 'package:flutter/material.dart';
import './home_page.dart';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Artigos'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Voltar'),
          onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
    );
  }
}