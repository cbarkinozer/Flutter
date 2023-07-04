import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('My First App'),
      centerTitle: true,
    ),
    body: Center(
      child: const Text('Hello World'),
    ),
    floatingActionButton: FloatingActionButton(
      child: const Text("Text"),
      onPressed: (){
      },
    ),
  ),
));
