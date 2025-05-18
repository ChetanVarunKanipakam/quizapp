import 'package:flutter/material.dart';

import 'package:basicquizapp/answer_button.dart';
import 'package:basicquizapp/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onselectedAnswer});

  final void Function(String) onselectedAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionState = 0;

  void answerQuestion(String answer) {
    setState(() {
      widget.onselectedAnswer(answer);
      currentQuestionState++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionState];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 220, 171, 253),
                fontSize: 24,
                fontWeight: FontWeight.bold
                ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.questionShuffle(currentQuestion.answers).map((
              answer,
            ) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AnswerButton(
                    answerText: answer,
                    onTap: () {
                      answerQuestion(answer);
                    },
                  ),
                  SizedBox(height: 20),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
