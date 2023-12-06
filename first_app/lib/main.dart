import 'package:flutter/material.dart';

void main() {
  String yourName = 'RS';
  String sentence = 'Welcome to My Flutter App $yourName..!';
  runApp(Center(
      child: Text(
    '$sentence',
    textDirection: TextDirection.ltr,
    style: TextStyle(
        color: Colors.orangeAccent, fontSize: 20, fontStyle: FontStyle.italic),
  ))); //S62651 Rabiatul binti Sulaiman
}
