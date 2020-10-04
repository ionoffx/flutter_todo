import 'package:flutter/material.dart';
import 'package:flutter_todo/RandomWords.dart';
import 'package:flutter_todo/TodoItem.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<TodoItem> dart = [];

  @override
  Widget build(BuildContext context) {

    dart.add(TodoItem("todo 1", false));
    dart.add(TodoItem("todo 2", false));
    dart.add(TodoItem("todo 3", false));

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: RandomWords(dart),
        ),
      );

  }
}
