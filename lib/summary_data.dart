import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryData extends StatelessWidget{
  const SummaryData({super.key ,required this.summaryData});

  final List<Map<String,Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
      child: SingleChildScrollView(child: Column(
        children: summaryData.map((data){
        return Row(
          children: [
          SizedBox(
            width: 30,
            child:Text(
              ((data['question-index'] as int)+1).toString(),textAlign: TextAlign.start,
              style: TextStyle(
                 backgroundColor: (data['choosen-answer']==data['correct-answer'] ? Colors.lightGreenAccent: Colors.redAccent) ,
              ),
              )
            ),
          Expanded(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data['question']as String , style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold
              )),
              
              Text(data['choosen-answer']as String,
              style: TextStyle(
                color: const Color.fromARGB(255, 155, 189, 228)
              )
              ),
              Text(data['correct-answer']as String,
              style: TextStyle(
                color: const Color.fromARGB(255, 102, 240, 42)
              )),
            ],
            )
          )
        ],);
  }).toList(),
   )));
  }
}