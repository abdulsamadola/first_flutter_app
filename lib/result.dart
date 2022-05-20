import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;

  Result(this.totalScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (totalScore < 100) {
      resultText = 'Opps! you tried!!!';
    } else {
      resultText = 'Good Boy!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        OutlinedButton(
          onPressed: resetHandler,
          style: OutlinedButton.styleFrom(
              primary: Colors.amber, side: BorderSide(color: Colors.amber)),
          child: Text('Restart Quiz'),
        ),
      ]),
    );
  }
}
