//s62651 Rabiatul binti Sulaiman

import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                //Navigate to Screen 2
                Navigator.pushNamed(
                  context,
                  '/first',
                );
              },
              child: Text('Go To Screen 2'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                //Navigate to screen 1
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Go To Screen 3'),
            ),
          ],
        ),
      ),
    );
  }
}
