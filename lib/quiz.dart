import 'package:basicquizapp/data/questions.dart';
import 'package:basicquizapp/question_screen.dart';
import 'package:flutter/material.dart';

import 'package:basicquizapp/hme_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  List<String> selectedAnswers=[];
  var activeScreen = 'start-screen';
  // alternate approach
  // Widget? activeScreen;

  // @override
  // void initState() {

  //   activeScreen=HmeScreen(switchScreen);

  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void addSelectedanswer(String answer){
    selectedAnswers.add(answer);

    if ( selectedAnswers.length== questions.length){
      setState(() {
        selectedAnswers=[];
        activeScreen='start-screen';
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 134, 85, 174),
                const Color.fromARGB(255, 96, 3, 139),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: activeScreen == 'start-screen'
                  ? HmeScreen(switchScreen)
                  : QuestionScreen(onselectedAnswer: addSelectedanswer),
        ),
      ),
    );
  }
}
