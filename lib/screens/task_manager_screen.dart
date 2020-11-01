import 'package:flutter/material.dart';

import '../widgets/task_manager.dart';
import '../widgets/task_list.dart';

class TaskManagerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Manager'),
      ),
      body: Column(
        children: <Widget>[
          TaskManager(),
          Divider(),
          TaskList(),
        ],
      ),
    );
  }
}
