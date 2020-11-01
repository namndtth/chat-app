import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../providers/task_list.dart';

class PickAndPlaceTaskList extends StatefulWidget {
  @override
  _PickAndPlaceTaskListState createState() => _PickAndPlaceTaskListState();
}

class _PickAndPlaceTaskListState extends State<PickAndPlaceTaskList> {
  bool _isExpand = false;

  @override
  Widget build(BuildContext context) {
    var pickAndPlaceTaskList =
        Provider.of<TaskList>(context).filter(TaskType.Move);
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              icon:
                  _isExpand ? Icon(Icons.expand_less) : Icon(Icons.expand_more),
              onPressed: () {
                setState(() {
                  _isExpand = !_isExpand;
                });
              },
            ),
            Text(
              'Pick And Place Tasks',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        _isExpand
            ? Container(
                height: 60.0 * pickAndPlaceTaskList.length,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: pickAndPlaceTaskList.length,
                  itemBuilder: (ctx, i) {
                    return ListTile(
                      title: Text(
                          '${pickAndPlaceTaskList[i].id} pick at ${pickAndPlaceTaskList[i].type} and place at ${pickAndPlaceTaskList[i].type}'),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[Icon(Icons.edit), Icon(Icons.delete)],
                        ),
                      ),
                    );
                  },
                ),
              )
            : Container(),
      ],
    );
  }
}
