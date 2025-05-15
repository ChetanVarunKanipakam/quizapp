import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: HmeScreen()));
  }
}

class HmeScreen extends StatelessWidget {
  const HmeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [const Color.fromARGB(255, 200, 150, 241),const Color.fromARGB(255, 96, 3, 139)],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight)
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/quizlogo1.png"),
            SizedBox(height: 20),
            Text("Quiz App",style: TextStyle(
              color: Colors.grey,
              fontSize: 28
            ),
            ),
            
            SizedBox(height: 20),
            OutlinedButton(onPressed: () {}, child: Text("Start Quiz")),
          ],
        ),
      ),
    );
  }
}
