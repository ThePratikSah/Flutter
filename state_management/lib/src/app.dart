import 'package:flutter/material.dart';
import './question.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  // code to go to next question
  void _quizAnswer() {
    setState(() {
      _index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var quizQuestions = [
      "What is your name?",
      "What do you do?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Trivia"),
        ),
        body: Column(
          children: [
            Question(
              quizQuestions[_index],
            ),
            RaisedButton(
              onPressed: _quizAnswer,
              child: Text("True"),
            ),
            RaisedButton(
              child: Text("False"),
              onPressed: _quizAnswer,
            ),
          ],
        ),
      ),
    );
  }
}
