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
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 15},
        {'text': 'Yellow', 'score': 20},
      ],
    },
    {
      'questionText': 'What\'s your favourite food ? ',
      'answers': [
        {'text': 'Chinese', 'score': 10},
        {'text': 'Italian', 'score': 10},
        {'text': 'Indian', 'score': 15},
        {'text': 'French', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal? ',
      'answers': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 5},
        {'text': 'Elephant', 'score':10},
        {'text': 'Lion', 'score': 15}
      ],
    },
  ];
  var _questionIdx = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIdx = 0;
      _totalScore = 0;
    });
  }
  void _answerQuestion(int score) {
    _totalScore += score;

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
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
