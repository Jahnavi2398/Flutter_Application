import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

// class always created when data changes internally..
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// created another class....
// is not recreated when data changes....state remain persistent
class _MyAppState extends State<MyApp> {
    final _questions =  const[
      {
        'questionText': 'What\'s your fav color?',
        'answerText': ['Blue', 'Green', 'Red', 'Yellow'],
      },
      {
        'questionText': 'What\'s your fav animal?',
        'answerText': ['Dog', 'Cat', 'Lion', 'Snake'],
      },
      {
        'questionText': 'Who\'s your fav instructor ?',
        'answerText': ['Max', 'Phil', 'John', 'Ralph'],
      },
    ];
  var _questionIndex = 0;

  void _answerQuestion() {
    // func required to change state
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print("Answer chosen!!");
  }

  @override
  build(BuildContext context) {
  
    //print("Hello!!");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My Application")),
        body: _questionIndex < _questions.length 
        ? Quiz(
          answerQuestion : _answerQuestion , 
          questionIndex : _questionIndex ,
          questions : _questions,
          ) 
        : Center(
          child: Text("You did it!!"),
          ),
      ),
    );
  }
}
