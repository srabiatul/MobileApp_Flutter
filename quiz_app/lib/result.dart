import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText = 'You did it..!';
    if (resultScore <= 8) {
      resultText = 'You are innocent..!';
    } else if (resultScore <= 12) {
      resultText = 'pretty likeable..!';
    } else if (resultScore <= 6) {
      resultText = 'You are strange..!';
    } else {
      resultText = 'You are so bad..!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () => resetHandler(),
          child: Text('Restart quiz'),
        ),
      ],
    ));
  }
}
