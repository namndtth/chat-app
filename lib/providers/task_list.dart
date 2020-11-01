import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../models/task.dart';

class TaskList with ChangeNotifier {
  List<Task> _tasks = [
    MoveTask('id1', 'station id 1'),
    MoveTask('id2', 'station id 2'),
    MoveTask('id3', 'station id 3'),
    PickAndPlaceTask('id4', 'station 1', 'station 2'),
    PickAndPlaceTask('id5', 'station 3', 'station 4'),
    PickAndPlaceTask('id6', 'station 5', 'station 6'),
  ];

  List<Task> get tasks {
    return [..._tasks];
  }
  List<Task> filter(TaskType type) {
    return _tasks.where((task) => task.type == type).toList();
  }
  void add(Task task)
  {
    _tasks.add(task);
    notifyListeners();
  }
  void edit(Task task, Task newTask)
  {
    notifyListeners();
  }
  void delete(Task task)
  {
    notifyListeners();
  }
}