import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:movie_shop/myResult.dart';
import 'package:movie_shop/questions.dart';

import './answer.dart';
import './questions.dart';
import './myQuestions.dart';
import './myAnswers.dart';
/*
void main(){
  //runs the application so we pass the method with our widgets
  runApp(MyDemoApp());

}*/

//shortened way
void main() => runApp(MyDemoApp());
class MyDemoApp extends StatefulWidget {
  @override
  //shorter way
  MyDemoAppState createState() => MyDemoAppState();
}
//This function changes the app into a stateful widget
class MyDemoAppState extends State<MyDemoApp> {

  var totalScore=0;
  var questions=[
    //Using maps Maps()

    //Question 1
    {
      'Question':'What is your favorite movie',
      'answers':[

      {'text':'Expandables','score':10},
      {'text': 'Drunken Master','score':10},
      {'text':'Naked weapon','score':10},

      ],
      },

    //Question 2
    {
      'Question':'Whose your favorite actor',
      'answers':[

      {'text':'Scarlet Johnson','score':10},
      {'text':'Lupita Nyóngo','score':10},
      {'text': 'Samuel Jackson','score':10},

      ],//end of answers
      },

    //Question 3
    {
      'Question': 'Which  type of movies do you like?',
      'answers':[

        {'text':'Animation Movies','score':10},
        {'text':'Action Movies','score':10},
        {'text':'Drama Movies','score':10},

        ],
        },

];

  var quizIndex=0;

  void answers(int score){

    totalScore = totalScore + score;
    //or
    //totalScore += score;

    setState(() {

      quizIndex = quizIndex + 1;

    });
    
    if(quizIndex < questions.length){

      print('More  Questions');

    }else{
      print('No more questions');
    }
    print(quizIndex);

  }



  void resetQuiz(){

    setState(() {
      quizIndex=0;
      totalScore=0;
    });


  }

  @override
  Widget build( BuildContext context) {

    //lists are created by square brackets

    //takes home arguments which flutter is what will display on the screen
    //A comma after parathensis allows the IDE to format in a readable form
    return MaterialApp(home:
    //Scaffold is a widget container that hold widgets in the application
    //All widgets should be under the scaffold body
    Scaffold(
      //The appbar is on top of the app
      //one can pass texts and change the color
      
      appBar: AppBar(title: Text('Movie Questions'),),
      //Here we add everything we want it to appear on the body of the application

      //in the body  we add an in visible layout which is a layout that hold a list of
      //of widgets
      body:
      //if statement
      quizIndex< questions.length ?
      Maswali(questions:questions , answerThequiz:answers, questionIndex:quizIndex)
    : Result(totalScore,resetQuiz),

    )
    );
  }
}