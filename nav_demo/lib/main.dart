//s62651 Rabiatul binti Sulaiman

import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Screen1(),
        '/first': (context) => Screen2(),
        '/second': (context) => Screen3(),
      },
    );
  }
}
