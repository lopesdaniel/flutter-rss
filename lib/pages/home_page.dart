import 'package:flutter/material.dart';
import './articles_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final feedController = TextEditingController();

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
              controller: feedController,
              decoration: InputDecoration(
                labelText: 'Link do RSS'
              ),
              validator: (value){
                if(value.isEmpty){
                  return 'Este campo não pode estar vazio';
                }
              },
              ),
              RaisedButton(
                child: Text('Cadastrar'),
                color: Colors.amber,
                textColor: Colors.black,
                onPressed: () {
                  if(_formKey.currentState.validate()){
                    print(feedController.text);
                    feedController.text = '';
                  }
                },
              )
            ],
          ),
        ),
      )
    );
  }
}