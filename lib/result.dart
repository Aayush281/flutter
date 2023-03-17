import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultScore = 0;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Low score';
    } else if (resultScore <= 12) {
      resultText = 'Moderately low score';
    } else if (resultScore <= 16) {
      resultText = 'Moderately high score';
    } else {
      resultText = 'High score!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Restart Quiz'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}

//ElevatedButton() is used for restarting the quiz
//Text() is used to display the result after the user attempts all the questions
