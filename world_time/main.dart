import 'package:flutter/material.dart';
import 'package:world_time/home.dart';
import 'package:world_time/loading.dart';
import 'package:world_time/choose_location.dart';


// How flutter routing works?
// stack structure puts screens on top of each other
//So when you go to location screen there is home screen at the back
//When you go to home screen the location screen is removed
void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),// The splash art
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));


