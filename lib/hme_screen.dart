import 'package:flutter/material.dart';

class HmeScreen extends StatelessWidget {
  const HmeScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/quizlogo1.png",width: 300,),
            SizedBox(height: 60),
            Text("Quiz App",style: TextStyle(
              color: const Color.fromARGB(255, 225, 197, 246),
              fontSize: 28
              ),
            ),
            SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                overlayColor: const Color.fromARGB(255, 144, 142, 151),
              ),
              icon:Icon(Icons.arrow_right_alt),
              label: Text("Start Quiz")),
          ],
        )
    );
  }
}
