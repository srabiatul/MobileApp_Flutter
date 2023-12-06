//s62651 Rabiatul binti Sulaiman

import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 3'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black,
          ),
          onPressed: () {
            //Navigate to Screen 1
            Navigator.pushNamed(
              context,
              '/',
            );
          },
          child: Text('Go To Screen 1'),
        ),
      ),
    );
  }
}
