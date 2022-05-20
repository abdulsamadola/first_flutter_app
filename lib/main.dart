import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  var questions = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 20},
        {'text': 'Green', 'score': 10},
        {'text': 'Pink', 'score': 5},
        {'text': 'Dark', 'score': 22},
      ]
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 5},
        {'text': 'Fish', 'score': 52},
        {'text': 'Lion', 'score': 500},
        {'text': 'Donkey', 'score': 5000},
      ]
    }
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: _questionIndex < questions.length
          ? Quiz(
              questions: questions,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
