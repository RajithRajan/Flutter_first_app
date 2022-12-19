import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;

  const Answer(this.answerText, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 50,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      child: Text(
        answerText,
        style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
        textAlign: TextAlign.center,
      ),
    );
  }
}
