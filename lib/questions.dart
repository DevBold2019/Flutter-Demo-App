
import 'package:flutter/material.dart';

//import question widget so that we can use it in main
//./ means look in the same folder as main.dart
import './questions.dart';

// ignore: must_be_immutable
class Questions extends StatelessWidget{

  String questions;
  
  //by using this.questions we set the questions to the questions string variables
  Questions(this.questions);

  @override
  Widget build(BuildContext context) {

    //container has a child in this case its a text
    //styling the text
    return Container(
      //infinity gives width according to the widgets in the container
      width:double.infinity,
      margin: EdgeInsets.all(10),
      child:Text(questions, style:
    TextStyle(fontSize: 30),
      textAlign:TextAlign.center,
    ),
    );
  }



}