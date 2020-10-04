import 'package:flutter/material.dart';
import 'DetailScreen.dart';
import 'TodoItem.dart';

class RandomWords extends StatefulWidget {
  RandomWords(this.dart);
  final List<TodoItem> dart;


  @override
  State<RandomWords> createState() => _RandomWordsState(dart);
}

class _RandomWordsState extends State<RandomWords> {
  //_RandomWordsState(List<TodoItem> adart, {Key key, this.aadart}) : super(key: key);
  List<TodoItem> aadart;

  _RandomWordsState(this.aadart);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: aadart.length,
        itemBuilder: (context, index) {
          return _buildRow(aadart[index]);
        });
  }

  Widget _buildRow(TodoItem pair) {
    return ListTile(
      title: Text(
        pair.itemTitle,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(todo: pair),
          ),
        );
      },
    );
    // return CheckboxListTile(
    //   title: Text(pair.itemTitle),
    //
    //   onChanged: (bool value) {
    //     setState(() {
    //       pair.check = value;
    //     });
    //   },
    //   secondary: const Icon(Icons.hourglass_empty),
    // );
  }
}

