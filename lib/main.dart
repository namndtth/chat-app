import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/task_list.dart';
import './screens/task_manager_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskList(),
      child: MaterialApp(
        title: 'Task manager',
        home: TaskManagerScreen(),
      ),
    );
  }
}
