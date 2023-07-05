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
        child: Image(
          image: NetworkImage('https://images.unsplash.com/photo-1617040619263-41c5a9ca7521?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("Text"),
        onPressed: (){
        },
      ),
    );
  }
}
