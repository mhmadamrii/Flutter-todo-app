import 'package:flutter/material.dart';
import 'package:todo/widgets/custom_widgets.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Get Started",
        ),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter new task",
                    ),
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Enter Description for the task...",
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
              ),
            ),
            const TodoWidget()
          ],
        ),
      ),
    );
  }
}
