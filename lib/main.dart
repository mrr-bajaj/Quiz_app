import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{
  final questions=const[
    {
      'questiontext': 'what is your favorite color',
      'answer': [
        {'text':'black','score':10},
        {'text':'red','score':8},
        {'text':'green','score':6},
        {'text':'white','score':4}
        ],
    },
    {
      'questiontext': 'which is your favorite car',
      'answer': [
        {'text':'bmw','score':4},
        {'text':'merci','score':8},
        {'text':'ferrari','score':6},
        {'text':'lamborgini','score':10}
      ],
    },
    {
      'questiontext': 'what is your favorite subject',
      'answer': [
        {'text':'mech','score':6},
        {'text':'civil','score':4},
        {'text':'computer','score':10},
        {'text':'maths','score':8}
      ],
    },
    {
      'questiontext': 'who is your favorite' ,
      'answer': [
        {'text':'shubham','score':10},
        {'text':'shubham','score':10},
        {'text':'shubham','score':10},
        {'text':'shubham','score':10}
      ],
    }
  ];
  var questionindex=0;
  var totalscore=0;

  void resetQuiz(){
    setState(() {
      questionindex=0;
      totalscore=0;
    });
  }

    void answerquestion(int score){
      totalscore+=score;
      setState(() {
        questionindex=questionindex+1;
      });
    print(questionindex);
      if(questionindex<questions.length){
        print('We have more questions');
      }else{
        print('no more question');
      }
  }
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(title: Text('Quiz '),),
      body: questionindex < questions.length ?
      Quiz(questions:questions,answerquestion: answerquestion,questionindex: questionindex)
          : Result(totalscore,resetQuiz),
    ),
    );
  }
}