import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

//Stateless widgets state cannot change over time
//By using stateless widget we can change the code and see result without a rerun
//which is called hot reload
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.mail
          ),
          label: Text('mail me'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("Text"),
        onPressed: (){
          print('You clicked me!');
        },
      ),
    );
  }
}
