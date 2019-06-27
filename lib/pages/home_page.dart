import 'package:flutter/material.dart';
import './articles_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Artigos'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.url,
              decoration: InputDecoration(
                labelText: 'Link do RSS'
              ),
              ),
              RaisedButton(
                child: Text('Cadastrar'),
                color: Colors.amber,
                textColor: Colors.black,
                onPressed: () {
                  print('ok !');
                },
              )
            ],
          ),
        ),
      )
    );
  }
}