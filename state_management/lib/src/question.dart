import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionList;

  Question(this.questionList);

  @override
  Widget build(BuildContext context) {
    return Text(questionList);
  }
}