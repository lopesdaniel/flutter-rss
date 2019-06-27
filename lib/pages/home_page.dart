import 'package:flutter/material.dart';
import './articles_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Artigos'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Pŕoximo'),
          onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => ArticlePage()));
          },
        )
      ),
    );
  }
}