//s62651 Rabiatul binti Sulaiman

import 'package:flutter/material.dart';
import 'screen3.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen 2'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.black,
          ),
          onPressed: () {
            //Navigate to Screen 3
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Screen3();
              }),
            );
          },
          child: Text('Go To Screen 3'),
        ),
      ),
    );
  }
}
