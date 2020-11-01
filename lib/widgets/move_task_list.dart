import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../providers/task_list.dart';

class MoveTaskList extends StatefulWidget {
  @override
  _MoveTaskListState createState() => _MoveTaskListState();
}

class _MoveTaskListState extends State<MoveTaskList> {
  bool _isExpand = false;

  @override
  Widget build(BuildContext context) {
    var moveTaskList = Provider.of<TaskList>(context).filter(TaskType.Move);
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
              'Move Tasks',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        _isExpand
            ? Container(
                height: 60.0 * moveTaskList.length,
                child: ListView.builder(
                  itemCount: moveTaskList.length,
                  itemBuilder: (ctx, i) {
                    return ListTile(
                      title: Text(
                          '${moveTaskList[i].id} move to  ${moveTaskList[i].type}'),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.edit),
                            Icon(Icons.delete)
                          ],
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
