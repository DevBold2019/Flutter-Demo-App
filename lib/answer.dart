
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './answer.dart';

class Answer extends StatelessWidget{

  //points to a function
  final Function selectQuiz;
  final String answerText;

  Answer(this.selectQuiz,this.answerText);

  @override
  Widget build(BuildContext context) {


    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(child:
    Text(answerText),
    color: Colors.blue,
    onPressed: selectQuiz,
        textColor: Colors.white,
    ),
    );
  }


}