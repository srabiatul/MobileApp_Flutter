//S62651 Rabiatul binti Sulaiman

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyMainPage()));

class MyMainPage extends StatefulWidget {
  const MyMainPage({super.key});

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  //Initiliase a to-do list records..
  List<String> _todoRecords = ['Task 1', 'Task 2', 'Task 3', 'Task 4'];

  //add _addingToDo() method..
  void _addingToDo() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          String newTodo = '';

          return AlertDialog(
            title: Text('Enter New Task Below'),
            content: TextField(
              onChanged: (value) {
                //Noted: Can also use TextController
                newTodo = value;
              },
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel', style: TextStyle(color: Colors.red)),
              ),
              TextButton(
                onPressed: () {
//call the setState to re-run the rebuilding of Widgets.
//Then, add the current value from TextField into
//_todoRecords list.
                  setState(() {
                    _todoRecords.add(newTodo);
                  });
//Call navitor to automaticlly closed AlertDialog box..
                  Navigator.of(context).pop();
                },
                child: Text('Submit', style: TextStyle(color: Colors.green)),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlueAccent,
        appBarTheme: AppBarTheme(
          color: Colors.orangeAccent,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('To Do List', style: TextStyle(fontSize: 40)),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: _todoRecords.length,
          itemBuilder: (context, index) {
            final toDo = _todoRecords[index];

            return ListTile(
              title: Text(toDo),
              onTap: () {
                setState(() {
                  _todoRecords.removeAt(index);
                });
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          // for data new data entry
          child: Icon(Icons.add),
          onPressed: _addingToDo,
        ),
      ),
    );
  }
}
