import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:movie_shop/questions.dart';
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

  void answers(){
    print('Answer chosen');

  }
  @override
  Widget build( BuildContext context) {

    //lists are created by square brackets
    var questions=[
      'What is your favorite movie',
      'Whose your favorite actor',
      'Which is the type of movies do you like?',];

    //takes home arguments which flutter is what will display on the screen
    //A comma after parathensis allows the IDE to format in a readable form
    return MaterialApp(home:
    //Scaffold is a widget container that hold widgets in the application
    //All widgets should be under the scaffold body
    Scaffold(
      //The appbar is on top of the app
      //one can pass texts and change the color
      
      appBar: AppBar(title: Text('Bliss Movies'),),
      //Here we add everything we want it to appear on the body of the application

      //in the body  we add an in visible layout which is a layout that hold a list of
      //of widgets
      body:
      //This arranges our widgets in a column thus containing a list of widgets
      Column(children: <Widget>[
        //we want to pass our first quiz from the list of questions choosing with element index
      Questions(questions.elementAt(0)),
      RaisedButton(child: Text('Answer quiz 1'),onPressed: () => print('Youre about to answer quiz 1'),),
      RaisedButton(child: Text('Answer quiz 2'),onPressed: answers,),
      ],),

    )
    );
  }
}