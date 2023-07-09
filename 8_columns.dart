import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('My First App'),
      centerTitle: true,
    ),
    body: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.cyan,
          child: Text('one'),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.cyan,
          child: Text('two'),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.cyan,
          child: Text('three'),
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      child: const Text("Text"),
      onPressed: (){
      },
    ),
  ),
));
