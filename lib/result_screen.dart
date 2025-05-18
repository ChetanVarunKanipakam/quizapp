import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text("Check the key sheet"),
          SizedBox(height: 30,),
          Text("question1"),
          SizedBox(height: 30,),
          TextButton(
            onPressed: (){},
            child: Text(
              "Restart Quiz"
              ),
              )
           ],)
            )
     );     
  }
}