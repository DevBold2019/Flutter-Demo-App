


import 'package:flutter/cupertino.dart';
import './answer.dart';
import './questions.dart';

class Maswali extends StatelessWidget{

  final List<Map<String,Object>>questions;
  final Function answerThequiz;
  final int questionIndex;


  Maswali({
    @required this.questions,
    @required this.answerThequiz,
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    //  //This arranges our widgets in a column thus containing a list of widgets
    return   Column(children: <Widget>[
      //we want to pass our first quiz from the list of questions choosing with element index
      Questions(questions[questionIndex] ['Question'],
      ),
      //three dots spread operator ;takes all the list and pulls values from list
      //add to the surrounding as individual value
      ...(questions[questionIndex] ['answers'] as List<String>).map((answer){

        return Answer(answerThequiz,answer);
      }).toList(),

    ],
    );
  }


}