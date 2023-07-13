import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  //simulate network request for data asynchronously
  void getData() async{

    String username = await Future.delayed(Duration(seconds: 3),(){
      print('Rock Lee');
    });

    String bio = await Future.delayed(Duration(seconds: 3),(){
      print(' I will be stronger every second.');
    });

    print('$username - $bio');

  }

  @override
  void initState(){
    super.initState();
    getData();
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(onPressed: () {
        setState(() {
          counter+=1;
        });
      },
        child: Text('The counter is $counter'),

      ),
    );
  }
}
