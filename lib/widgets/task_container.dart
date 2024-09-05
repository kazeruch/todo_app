import 'package:flutter/material.dart';

class TaskContainer extends StatelessWidget {
  const TaskContainer({
    super.key,
    required this.task,
  });

  final String task;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 8,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 156,
          vertical: 24,
        ),
        decoration: const BoxDecoration(
          color: const Color(0x992F8DFF),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Text(
          task,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}