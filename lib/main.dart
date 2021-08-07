import 'package:cour4task3/Providers/tasks_provider.dart';
import 'package:cour4task3/Screens/todo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksProvider>(
      create: (context)=>TasksProvider(),
      child: MaterialApp(
      title: 'ToDoList',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TOdOList(),
    ),
    );
  }
}

