import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  Quiz(
      {required this.answerQuestion,
      required this.questionIndex,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']
            as String), // acccessing key from map

        // spread out operator.
        ...(questions[questionIndex]['answerText'] as List<String>)
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()

        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),

        // ElevatedButton(onPressed: _answerQuestion, child: Text("Answer 1")),
        // ElevatedButton(onPressed: _answerQuestion, child: Text("Answer 2")),
        // ElevatedButton(onPressed: _answerQuestion, child: Text("Answer 3"))
      ],
    );
  }
}
