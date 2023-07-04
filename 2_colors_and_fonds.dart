import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('My First App'),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    body: Center(
      child: const Text(
        'Hello World',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: fontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.grey[600],
          fontFamily: GoogleFonts.oswald(textStyle: display1),
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      child: const Text("Text"),
      onPressed: (){
      },
    ),
  ),
));
