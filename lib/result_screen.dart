import 'package:basicquizapp/data/questions.dart';
import 'package:basicquizapp/summary_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key,required this.choosenAnswers, required this.restarting});

  final List<String> choosenAnswers;
  final void Function() restarting;
  List<Map<String,Object>> getsummaryData(){
    List<Map<String,Object>> summary=[];
    for( var i=0;i< choosenAnswers.length;i++){
      summary.add({
        'question-index':i,
        'question': questions[i].question,
        'correct-answer': questions[i].answers[0],
        'choosen-answer': choosenAnswers[i]
    });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    var summaryData=getsummaryData();
    int numoftotalquestions=choosenAnswers.length;
    int numofcorrectquestions=summaryData.where((data){
        return data['choosen-answer']==data['correct-answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text("Check the key sheet, You scored $numofcorrectquestions out of $numoftotalquestions",style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold
              )),
          SizedBox(height: 30,),
          SummaryData(summaryData: summaryData),
          SizedBox(height: 30,),
          TextButton.icon(
            onPressed: restarting,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white
            ),
            icon: Icon(Icons.refresh_rounded),
            label: Text("Restart Quiz"),
              )
           ],)
            )
     );     
  }
}