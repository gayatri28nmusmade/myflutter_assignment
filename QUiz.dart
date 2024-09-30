import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build (BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home : QuizApp()
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  
  @override
  State createState() => _QuizAppState();
}

  class _QuizAppState extends State<QuizApp>{

    List<Map> allQuestion=[
      {
        "Question":"Who is founder of Microsoft?",
        "Options" : ["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
        "correctAnswer":1
      },
      {
        "Question":"Who is founder of Google?",
        "Options" : ["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
        "correctAnswer":2
      },
      {
        "Question":"Who is founder of SpaceX?",
        "Options" : ["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
        "correctAnswer":3
      },
      {
        "Question":"Who is founder of facebook?",
        "Options" : ["Steve Jobs","mark zuckerberg","Lary Page","Elon Musk"],
        "correctAnswer":1
      },
      {
        "Question":"Who is founder of Instagram?",
        "Options" : ["Kevin Systrom","Bill Gates","Lary Page","Elon Musk"],
        "correctAnswer":0
      }
    ];

    int curQueIndex=0;
    int selectedOptionIndex=-1;
    bool questionScreen=true;
    int correctAns=0;
    

    MaterialStatePropertyAll<Color?> changeColor(int answerIndex){
      if(selectedOptionIndex!=-1){
        if(answerIndex==allQuestion[curQueIndex]["correctAnswer"]){
          if(selectedOptionIndex==allQuestion[curQueIndex]["correctAnswer"]){
            correctAns++;
          }
          return const MaterialStatePropertyAll(Color.fromARGB(255, 157, 63, 198));
        }
        else if(selectedOptionIndex==answerIndex){
          if(selectedOptionIndex==allQuestion[curQueIndex]["correctAnswer"]){
            correctAns++;
          }
          return const MaterialStatePropertyAll(Color.fromARGB(255, 94, 7, 114));
        }
        else{
          return const MaterialStatePropertyAll(null);
        }
      }
      else{
        return const MaterialStatePropertyAll(null);
      }
    }

    @override
    Widget build(BuildContext context){
      return isQuestionScreen();
        
    }

  Scaffold isQuestionScreen() {
    if(questionScreen==true){
      return Scaffold(
        appBar: AppBar(
          title: const Text("QuizApp",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 30,
            color: Colors.white
          ),
          ),
          backgroundColor: const Color.fromARGB(255, 53, 3, 62),
          centerTitle: true,
        ),

        body:Column(
            children: [
              const SizedBox(height: 30,),
              //CountOfQue
              Row(
                children: [

                  const SizedBox(
                    width: 290,
                  ),
                  Text("Question : ${curQueIndex+1}/${allQuestion.length}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 19, 14, 116),
                    fontSize: 28
                  ),
                  ),
                ],
              ),

            const SizedBox(height: 30,),

            Row(
              children: [
                const SizedBox(width: 250,),
                SizedBox(
                  height: 45,
                  width: 45,
                  child: FloatingActionButton(onPressed: (){
                    selectedOptionIndex=-1;
                    curQueIndex=0;
                    setState(() {
                      
                    });
                  },
                  child: const Text("1",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 4, 81, 144)
                  ),),),
                ),

                const SizedBox(width: 10,),

                 SizedBox(
                  height: 45,
                  width: 45,
                  child: FloatingActionButton(onPressed: (){
                    
                    selectedOptionIndex=-1;
                    curQueIndex=1;
                    
                    setState(() {
                      
                    });
                  },
                  child: const Text("2",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 4, 81, 144)
                  ),),),
                ),

                const SizedBox(width: 10,),
                

                 SizedBox(
                  height: 45,
                  width: 45,
                  child: FloatingActionButton(onPressed: (){
                    
                    selectedOptionIndex=-1;
                    curQueIndex=2;

                    setState(() {
                      
                    });
                  },
                  child: const Text("3",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 4, 81, 144)
                  ),),),
                ),

                const SizedBox(width: 10,),

                 SizedBox(
                  height: 45,
                  width: 45,
                  child: FloatingActionButton(onPressed: (){
                  selectedOptionIndex=-1;
                    curQueIndex=3;
                    
                    setState(() {
                      
                    });
                  },
                  child: const Text("4",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 4, 81, 144)
                  ),),),
                ),

                const SizedBox(width: 10,),

                 SizedBox(
                  height: 45,
                  width: 45,
                  child: FloatingActionButton(onPressed: (){
                    selectedOptionIndex=-1;
                    curQueIndex=4;
                    setState(() {
                      
                    });
                  },
                  child: const Text("5",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 4, 81, 144)
                  ),),),
                ),

              ],
            ),

            const SizedBox(height: 30,),

              //Question
              SizedBox(
                height: 40,
                width: 450,
                child: Text("${curQueIndex+1}) ${allQuestion[curQueIndex]["Question"]}",
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 19, 14, 116),
                    fontSize: 30
                  ),
              ),
              ),
          
              const SizedBox(height: 30),
          
              //option 1
              SizedBox(
                height: 50,
                width: 450,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: changeColor(0)
                  ),
                 onPressed: (){
                  if(selectedOptionIndex==-1){
                    selectedOptionIndex=0;
                    setState(() {});
                  }                  
                 },
                 child : Text("A.${allQuestion[curQueIndex]["Options"][0]}",
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 19, 14, 116),
                    fontSize: 28
                  ),
                 ),
                 ),
              ),
          
              const SizedBox(height: 30,),
          
              //option 2
              SizedBox(
                height: 50,
                width: 450,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: changeColor(1),
                  ),
                  onPressed: (){
                    if(selectedOptionIndex==-1){
                      selectedOptionIndex=1;
                      setState(() { 
                      });
                    }
                  }, 
                  child: Text("B.${allQuestion[curQueIndex]["Options"][1]}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 19, 14, 116),
                    fontSize: 28
                  ),
                  )
                  ),
              ),
          
              const SizedBox(height: 30,),            
          
              //option 3
              SizedBox(
                height: 50,
                width: 450,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: changeColor(2),
                  ),
                  onPressed: (){
                  if(selectedOptionIndex==-1){
                    selectedOptionIndex=2;
                    setState(() {
                      
                    });
                  }
                }, 
                child: Text("C. ${allQuestion[curQueIndex]["Options"][2]}",
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 19, 14, 116),
                    fontSize: 28
                  ),
                )
                ),
              ),
          
              const SizedBox(height: 30,),
          
              //option 4
              SizedBox(
                height: 50,
                width: 450,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: changeColor(3)
                  ),
                  onPressed: (){
                  if(selectedOptionIndex==-1){
                    selectedOptionIndex=3;
                    setState(() {
                    });
                  }
                }, 
                child: Text("D. ${allQuestion[curQueIndex]["Options"][3]}",
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 19, 14, 116),
                    fontSize: 28
                  ),
                ),
                ),
              ),
            ],
        ),

        //NExt Que
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(selectedOptionIndex!=-1){
            if(curQueIndex<allQuestion.length-1){
            curQueIndex++;
            //selectedOptionIndex=-1;
            }
            else{
              questionScreen=false;
            }
            selectedOptionIndex=-1;
            setState(() { });
            }
          },
          backgroundColor: Colors.purple,
          child: const Icon(Icons.forward),
          ),
      );
    }
    else{
      return Scaffold(
        appBar: AppBar(
          title: const Text("QuizApp",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 30,
            color: Colors.white
          ),
          ),
          backgroundColor: const Color.fromARGB(255, 53, 3, 62),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 40,),

            Center(
              child: SizedBox(
                height:340,
                width: 350,
                child: Image.network("https://media.istockphoto.com/id/1448216223/vector/well-done-sticker-concept-with-gold-trophy-with-blinking-eye-face-emoticon-outline-vector.jpg?s=612x612&w=0&k=20&c=fbewq0otb8aQ1qE8Iv8Vur9JQZhg41-GhWzXs1eHwN8=")
              ),
            ),

            const SizedBox(height: 30,),

            const Row(
              children: [
                SizedBox(width: 290,),
                Text("Congratulations",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 19, 14, 116),
                    fontSize: 30
                  ),
                  ),
              ],
            ),

            const SizedBox(height: 30,),

            Row(
              children: [
                const SizedBox(width: 320,),
                SizedBox(
                  height: 50,
                  child: Text("Score : ${correctAns}/${allQuestion.length}",
                  style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 18, 4, 96)
              ),
              ),
                ),
              ],
            ),

            Row(
              children: [
                const SizedBox(width: 340,),
                SizedBox(
                  height: 50,
                  width: 100,
                  child: FloatingActionButton(
                    onPressed: (){
                      setState(() {
                        // Reset all
                        curQueIndex = 0;
                        selectedOptionIndex = -1;
                        correctAns = 0;
                        questionScreen = true;
                      });
                    },
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 18, 4, 96)
                      ),
                    ),
                  ),
                )
          ],
        )
      ],
          
    ),           
  );
}
}
}

