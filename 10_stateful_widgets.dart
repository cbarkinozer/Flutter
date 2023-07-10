import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget{
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard>{

  int ninjaLevel=0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('The ninja level: $ninjaLevel'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("+"),
        onPressed: (){
          setState(() {
            ninjaLevel+=1;
          });
        },
      ),
    );
  }
}
