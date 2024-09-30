import "package:flutter/material.dart";

void main(){
  runApp(const ContainerCol());
}

class ContainerCol extends StatefulWidget{
  const ContainerCol({super.key});

  @override
  State<ContainerCol> createState() => _ContainerColState(); 
}

class _ContainerColState extends State<ContainerCol>{
  bool changeColor=true;
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ContainerAppColor"),
          centerTitle: true,
          backgroundColor:(changeColor)? Color.fromARGB(255, 196, 132, 4) : Color.fromARGB(255, 164, 203, 71),
        ),
        body: Center(
          child: Container(
            height: 150,
            width: 150,
            color: (changeColor) ? Colors.red : Colors.yellow,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if (changeColor==true){
              changeColor=false;
            }else{
              changeColor=true;
            }
            setState(() {
              
            });
          },
          child: const Icon(Icons.color_lens_rounded),
          ),
      ),         
      );
  }
}