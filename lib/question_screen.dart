import 'package:flutter/material.dart';

import 'package:basicquizapp/answer_button.dart';
import 'package:basicquizapp/data/questions.dart';


class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen>{

  @override
  Widget build(BuildContext context) {
    var currentQuestion=questions[0];
    return SizedBox(
      width:double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(currentQuestion.question ,style: TextStyle(color: Colors.white)),
        const SizedBox(height: 30),
        AnswerButton(
          answerText: currentQuestion.answers[0],
          onTap:() {},
        ),
        const SizedBox(height: 10),
        AnswerButton(
          answerText: currentQuestion.answers[1],
          onTap:() {},
        ),
        const SizedBox(height: 10),
        AnswerButton(
          answerText: currentQuestion.answers[2],
          onTap: () {}
        ),
        SizedBox(height: 10,),
        AnswerButton(
          answerText: currentQuestion.answers[3],
          onTap: () {}
        ),
      ],)
    );
  }
}