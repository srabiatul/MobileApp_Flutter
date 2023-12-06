//62651 Rabiatul binti Sulaiman

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Student {
  String name;
  String paymentStatus;

  Student({required this.name, required this.paymentStatus});
}

class MyApp extends StatelessWidget {
  List<Student> students = [
    Student(name: "RS", paymentStatus: "Completed"),
    Student(name: "Adibah", paymentStatus: "Pending"),
    Student(name: "Piqa", paymentStatus: "Completed"),
    Student(name: "Byan", paymentStatus: "Completed"),
    Student(name: "Ilham", paymentStatus: "Pending"),
  ];

  @override
  Widget build(BuildContext context) {
    List<Student> completedStudents = students
        .where((student) => student.paymentStatus == 'Completed')
        .toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Completed Students List'),
          centerTitle: true,
        ),
        body: ListView(
          children: completedStudents.map((student) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(student.name),
              subtitle: Text(student.paymentStatus),
              trailing: Icon(Icons.arrow_forward),
            );
          }).toList(),
        ),
      ),
    );
  }
}
