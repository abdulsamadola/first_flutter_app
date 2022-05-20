import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHander;
  final String buttonText;

  Answer(this.buttonText, this.selectHander);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber)),
        onPressed: selectHander,
        child: Text(buttonText),
      ),
    );
  }
}
