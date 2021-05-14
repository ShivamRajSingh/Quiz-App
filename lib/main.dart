import 'package:flutter/material.dart';

import './question.dart';

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
  var _questionIdx = 0;

  void _answerQuestion() {
    setState(() {
      _questionIdx = _questionIdx + 1;
    });
    print(_questionIdx);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color ? ',
      'What\'s your favourite food ? ',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIdx],
            ),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: () {
                print('Answer 3 chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
