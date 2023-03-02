import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  final String title;

  const Todo({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo App",
        ),
      ),
      body: const TodoChild(),
    );
  }
}

class TodoChild extends StatefulWidget {
  const TodoChild({super.key});

  @override
  State<TodoChild> createState() => _TodoChildState();
}

class _TodoChildState extends State<TodoChild> {
  final List<String> _todos = [];

  // function show add todo
  void _addTodo(String todo) {
    setState(() {
      _todos.add(todo);
    });
  }

  // function show modal input
  void _showAddTodoModal() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        // ignore: avoid_unnecessary_containers
        return Container(
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: "please input todo",
                ),
                onSubmitted: (value) {
                  _addTodo(value);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Todo(
            title: _todos[index],
          );
        },
        itemCount: _todos.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddTodoModal,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
