import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title :"Flutter App",
      home : Scaffold(
        appBar: AppBar(
          title:const Text("Stateless App"),
      ),
      body: const Center(
        widthFactor: 50,
        heightFactor: 50,
        child: Text("Flutter App",
        ),
      ),
        )
    );
  }
}
