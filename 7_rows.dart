import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('My First App'),
      centerTitle: true,
    ),
    body: Row( //main axis is x-axis, cross-axis is the y-axis
      mainAxisAlignment: MainAxisAlignment.center,  //center or spaceBetween or spaceEvenly or end spaceAround
      crossAxisAlignment: CrossAxisAlignment.center, //stretch or start or baseline or end
      children: <Widget>[
        Text('hello world'),
        TextButton(
            onPressed:(){},
            style: TextButton.styleFrom(
              foregroundColor: Colors.purpleAccent,
            ),
            child: Text('Click me'),
        ),
        Container(
          color: Colors.cyan,
          padding: EdgeInsets.all(30.0),
          child: Text('Insight container'),
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
