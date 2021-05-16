import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color ? ',
      'answers': ['Red', 'Green', 'Blue', 'Yellow'],
    },
    {
      'questionText': 'What\'s your favourite food ? ',
      'answers': ['Chinese', 'Italian', 'Indian', 'French'],
    },
    {
      'questionText': 'What\'s your favourite animal? ',
      'answers': ['Dog', 'Cat', 'Elephant', 'Lion'],
    },
  ];
  var _questionIdx = 0;

  void _answerQuestion() {
    setState(() {
      _questionIdx = _questionIdx + 1;
    });
    print(_questionIdx);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_questionIdx < _questions.length)
            ? Quiz(
                questionIdx: _questionIdx,
                answerQuestion: _answerQuestion,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
