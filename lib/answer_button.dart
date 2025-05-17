import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({ required this.answerText,required this.onTap,super.key});
  final void Function() onTap;
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap,
           style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepPurple,
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15)
           ),
           child: Text(answerText),
           );
  }
}