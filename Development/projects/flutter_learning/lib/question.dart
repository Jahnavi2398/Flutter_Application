import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText); // positional argument
  // Question({this.questionText}); // curly braces makes it named argument.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // takes full width of the screen.
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
