import 'package:flutter/material.dart';

import './move_task_list.dart';
import './pick_and_place_task_list.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          MoveTaskList(),
          Divider(),
          PickAndPlaceTaskList(),
        ],
      ),
    );
  }
}
