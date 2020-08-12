import 'package:flutter/material.dart';


class Result extends StatelessWidget{
  final int resultscore;
  final Function resethandler;

  Result(this.resultscore,this.resethandler);

  String get resultPhrase{
    String resultText;
    if(resultscore <=20){
      resultText='You are inncoent';
    }
    else if(resultscore<=30){
      resultText='You are not bad..!!';
    }
    else if(resultscore<=35){
      resultText='You are good';
    }
    else{
      resultText='You are awesome';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
        resultPhrase,
        style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
          ),
          FlatButton(child: Text('Restart quiz!!'), onPressed: resethandler ,)
      ],
      ),
    );
  }
}