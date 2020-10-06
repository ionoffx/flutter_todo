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
        //showAlertDialog(context);
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

void showAlertDialog(BuildContext context) async {
  String result = await showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('AlertDialog Demo'),
        content: Text("Select button you want"),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.pop(context, "OK");
            },
          ),
          FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.pop(context, "Cancel");
            },
          ),
        ],
      );
    },
  );
}