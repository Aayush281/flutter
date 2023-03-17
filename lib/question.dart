//Here we are creating our own widget
//Second file is created because it is good convention to have one file per widget
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28,color: Colors.red),
        textAlign: TextAlign.center,
      ),
    );
  }
}

//In this case 10 device pixels will be taken by the margin around the whole constainer 
//edgeinsets has multiple constructors foe eg all()

//final keyword tells dart that the value of variable questionText will not change after the initialization of the
//variable in the constructor.

//Comtainer takes the width of the full screen
//Text takes the width of the constainer