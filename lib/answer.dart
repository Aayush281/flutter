import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
//Answer() is in Quiz()


//By using backgroundcolor we change the color of the button itself
//By using the foregroundcolor we change the color of the text present inside the button 

//answerText is a property
//selectHandler is a property in chich we are gonna store a function

//double is an object
//final keyword tells dart that the value of variable questionText will not change after the initialization of the var in constructor
//VoidCallBack means that the function does not take any arguments nor does it return any arguments
//Answer(this.selevtHandler) is a constrcutor
//child of container is elevated button (ie the child widget)
//child of elevated button is Text