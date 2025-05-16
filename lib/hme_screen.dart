import 'package:flutter/material.dart';

class HmeScreen extends StatelessWidget {
  const HmeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [const Color.fromARGB(255, 134, 85, 174),const Color.fromARGB(255, 96, 3, 139)],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight)
      ),
      child: Center(
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
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              icon:Icon(Icons.arrow_right_alt),
              label: Text("Start Quiz")),
          ],
        ),
      ),
    );
  }
}
