import "package:flutter/material.dart";

void main(){
  runApp(const ListChange());
}

class ListChange extends StatefulWidget{
  const ListChange({super.key});

  @override
  State<ListChange> createState() => _ListChangeState();

}

class _ListChangeState extends State<ListChange>{
  int count=0;
  List<String> love=<String>[
    "https://tse1.mm.bing.net/th?id=OIP.9hthnaf3V46DkaiN-UHlTgHaEo&pid=Api&P=0&h=180",
    "https://tse2.mm.bing.net/th?id=OIP.VOn6E2avsyK_32Xn5GNo8wHaEo&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.nWUmBWXwXH7s54oZq5A8UQHaF7&pid=Api&P=0&h=180",
    "https://tse2.mm.bing.net/th?id=OIP.wXPQQe-KiGokJGNzsW-90QHaEK&pid=Api&P=0&h=180",
    "https://tse1.mm.bing.net/th?id=OIP.wznFivTRn7tCGq8pLadNuwHaEo&pid=Api&P=0&h=180"    
  ];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListChange"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 160, 78, 175),
        ),
        body: Center(
          child: Column(
            children: [
              const Text("Krishn" ,style: TextStyle(color: Colors.blue,fontSize:35),),
                SizedBox(
                width: 500,
                height: 500,
                child: Image.network(love[count]),
                ),
            ],
          ),
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(count<love.length-1){
              count++;
            }
            else{
              count=0;
            }
            setState(() {
               
            });
          }
          ),
          ),
      );
  }
}