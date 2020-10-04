import 'package:flutter/material.dart';
import 'TodoItem.dart';

class DetailScreen extends StatelessWidget {
  // Todo를 들고 있을 필드를 선언합니다.
  final TodoItem todo;

  // 생성자 매개변수로 Todo를 받도록 강제합니다.
  DetailScreen({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // UI를 그리기 위해 Todo를 사용합니다.
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.itemTitle),
      ),
    );
  }
}