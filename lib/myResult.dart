
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget{

  final resultScore;
  final Function resetThequiz;


  Result(this.resultScore, this.resetThequiz);

  String get textToDisplay{

     String resultText;

    if(resultScore <=10){

      resultText="You suck";
    }else{

      resultText='You are a genius';
    }


    return resultText;
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: <Widget>[

               Text(textToDisplay,
              style: TextStyle(fontSize:30,
              fontWeight: FontWeight.bold,),
              textAlign: TextAlign.center,
               ),
          RaisedButton(child:
          Text('Reset Questions'),
            textColor:Colors.blue,
            onPressed: resetThequiz ,
          )
        ],
      ),
    );
  }


}