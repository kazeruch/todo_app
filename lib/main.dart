import 'package:flutter/material.dart';
import 'package:todo_app/screens/task_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDoApp', // title を追加
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Hiragino Sans',
        appBarTheme: const AppBarTheme(
          backgroundColor: const Color(0xFF2D64F5),
        ),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      home: const TaskScreen(),
    );
  }
}
