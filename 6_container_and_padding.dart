import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('My First App'),
      centerTitle: true,
    ),
    body: Container( //If you need color and margin use Container() else use Padding()
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      margin: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
      color: Colors.grey[400],
      child: Text('hello'),
    ),
    floatingActionButton: FloatingActionButton(
      child: const Text("Text"),
      onPressed: (){
      },
    ),
  ),
));
