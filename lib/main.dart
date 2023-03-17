import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import './question.dart';
import './answer.dart';
import './result.dart';
import 'quiz.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myAppState();
  }
}

class _myAppState extends State<myApp> {
  final _questions = const [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 7},
        {'text': 'green', 'score': 5},
        {'text': 'white', 'score': 3}
      ],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'cheetah', 'score': 10},
        {'text': 'panda', 'score': 7},
        {'text': 'lion', 'score': 5},
        {'text': 'dog', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s youre favourite hobby?',
      'answers': [
        {'text': 'trekking', 'score': 10},
        {'text': 'cycling', 'score': 7},
        {'text': 'reading', 'score': 5},
        {'text': 'jumping', 'score': 3}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalscore = 0;
  // var questions = 3;

  void _resetScore() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalscore = _totalscore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
                questions: _questions)
            : Result(_totalscore, _resetScore),
      ),
    );
  }
}

//Now we will convert _questions from List<Map<String, Object>> to _ for calculating score

//? represents that if the condition is true then Column will run else Center will run.     : is like an else statement


//in front of the body if _questionIndex < questions.length then Column will run otherwise Center will run .
//The final screen after answering all the question will be 'You did it' instead of that error screen.

//we are going to move 'questions' build() to a function of the class _myAppState as 'questions' will not be accessible to the
// if statement if we let it remain in the build() function 

//const is used for 'questions' instead of var as the contents of 'questions' are not changing, we are just gonna select the
// question number during runtime. ---BASICALLY USED FOR CLEANER CODE---


//questions.map(() {})

//questions[_questionIndex]['questionText'] as String......... here as String is added to prevent error

//Map is represented by {} or you can also use the Map() class
//In map we acces the question using it's key ie we will access the question statement using key.Place cursor on questions for addn. info

//When dart goes to Answer(_answerQuestion), the pointer  will redirect to the selectHandler in answer.dart file  

//in the body we have used Question widget created by us where earliwe there was a text widget

//After running setState() flutter runs build again and in this case the only change taking place is the question text 

//By changing questionIndex to _questionIndex , we make it a private property
//By changing myAppState to _MyAppState , we make it accessible only through the myApp file. Used to prevent bugs

//answerQuestion and not answerQuestion() because the compiler goes from top to bottom and we just write a pointer towards
//the function so no paranthesis are involved
//answer chosen will be seen only by the developer and not the user
//question[questionIndex] means dynamically the index will be assigned

//Good practise to add commas (LITERALLY AFTER EVERY CLOSING BRACKET)** as helps in neat code (COMMAS ARE VERY IMPORTANT FOR NEAT CODE!)
//                            **add only after those closing brackets which do not have any arguments
//The white comments are automatically added which makes the code easier to understand

//MaterialApp is widget (or class) provided by flutter team which is used converting  code to displaying widgets
//Takes many arguments and does a lot of heavy lifting behind the scenes

//So to tell that we have deliberately overridden the function this keyword is used.
//Used basically for cleaner code, code will still work without overridden keyword  

//void main() => runApp(myApp()) is also an alternative syntax for main()

//myApp is derived class of statefulwidget class

//debugShowCheckedModeBanner: false, removes the top left diagonal red banner

//sample change for github
