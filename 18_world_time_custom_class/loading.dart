import 'package:flutter/material.dart';
import 'package:world_time/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = "Loading...";

  void setUpWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    print(instance.getTime());
    setState(() {
      time = instance.time;
    });
  }


  @override
  void initState(){
    super.initState();
    setUpWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding:const EdgeInsets.all(50.0),
          child: Text(time),
      ),
    );
  }
}
