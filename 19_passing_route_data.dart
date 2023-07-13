import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  String time ="Loading...";
  String location;
  String flag;
  String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async{

    try{

      Response response = await get(Uri.parse('https://worldtimeapi.org./api/timezone/$url'));
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'];

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = now.toString();

    }catch (e){

      print('caught error:$e');
      time = 'Could not get the time data.';
    }
  }
}
