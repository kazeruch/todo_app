import 'package:flutter/material.dart';

class TaskEntryScreen extends StatelessWidget {
  final Function(String) onTaskAdded;

  TaskEntryScreen ({required this.onTaskAdded});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        // make sure the keyboard doesn't cover the input field
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 20,
        right: 20,
        top: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _controller,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: 'Enter task',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              final task = _controller.text;
              if (task.isNotEmpty) {
                onTaskAdded(task);
                Navigator.pop(context);
              }
            },
            child: Text('Add task'),
          ),
        ],
      ),
    );
  }
}