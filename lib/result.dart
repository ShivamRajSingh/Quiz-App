import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String score = resultScore.toString();
    String resultText;

    String finalResult = "Score : " + score;

    if (resultScore >= 25) {
      resultText = 'Awesome!!, ' + finalResult;
    } else if (resultScore >= 15) {
      resultText = 'Great Attempt!, ' + finalResult;
    } else {
      resultText = 'Better Luck Next Time!,' + finalResult;
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetHandler,
          textColor: Colors.blue,
          child: Text('Restart Quiz'),
        )
      ]),
    );
  }
}
