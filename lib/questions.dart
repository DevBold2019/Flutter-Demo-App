
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

    return Text(questions);
  }



}