import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_container.dart';
import 'package:todo_app/widgets/task_entry_screen.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tasks',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // 検索ボックス
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 36,
            ),
            child: TextField(
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: '検索ワードを入力してください',
              ),
              // onSubmitted: (String value) async {
              //   final results = await searchTasks(value);
              // },
            ),
          ),
          // タスク一覧
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return TaskContainer(task: tasks[index]);
              },
            ),
          )
        ],
      ),
      // タスク追加ボタン
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => TaskEntryScreen(
              onTaskAdded: (task) {
                setState(() {
                  // Update the state with the new task
                  tasks.add(task);
                });
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}