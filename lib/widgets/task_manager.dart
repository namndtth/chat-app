import 'package:flutter/material.dart';

class TaskManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            'Add Task',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.green,
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            'Send Task',
            style: TextStyle(fontSize: 24),
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            'Get Station ID',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
    );
  }
}
