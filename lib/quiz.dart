import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({this.questions, this.answerQuestion, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String , Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}

//Answer() is over here 

//... used above will take a list and will pull all the values inside the list out of it and add them to the surrounding list as indiv. vals.
//Hence we do not add list to a list but only values of a list so that we have only 1 list in the end => ie to avoid nested list

//We are passing an anonymous function in Answer() in order to calculate the score (This is just a
// modified argument of previous answerQuestion)
// answerQuestion(answer['score']) will be matched with void _answerQuestion(int) in main()
//We now want to forward the score to the result widget so we will be able to show different scores.

//After converting the list to a map containing string and object, we will have to modify List and modify answer to answer[index]
//If you are getting an error , then try being more specific about the object you are trying to pass (eg add 'as String)

//Here the variable names are same as that of the main.dart file but we have removed underscores
