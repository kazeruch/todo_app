import 'package:flutter/material.dart';

class TaskContainer extends StatefulWidget {
  const TaskContainer({
    super.key,
    required this.task,
  });

  final String task;

  @override
  State<TaskContainer> createState() => _TaskContainerState();
}

class _TaskContainerState extends State<TaskContainer> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 8,
      ),
      child: Container(
        alignment: Alignment(0.0, 0.0),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        decoration: const BoxDecoration(
          color: const Color(0x992F8DFF),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            Flexible(
              child: Text(
                widget.task,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        )
      ),
    );
  }
}