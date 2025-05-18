class QuizQuestion {
  const QuizQuestion(this.question,this.answers);

  final String question;
  final List<String> answers;

  List<String> questionShuffle(List<String> onanswers){
    List<String> ans=List.of(onanswers);
    ans.shuffle();
    return ans;
  }
}