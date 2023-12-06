import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('basic gestures'),
          centerTitle: true,
        ),
        body: Center(
          child: MyButton(),
        ),
      ),
    ),
  );
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tap tap');
      },
      child: Text('Click me'),
    );
  }
}
