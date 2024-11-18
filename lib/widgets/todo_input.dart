import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/todo_bloc.dart';

class TodoInput extends StatelessWidget {
  const TodoInput({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: textController,
              decoration: const InputDecoration(
                hintText: 'Add a new todo...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(width: 16),
          ElevatedButton(
            onPressed: () {
              if (textController.text.isNotEmpty) {
                context.read<TodoBloc>().add(AddTodo(textController.text));
                textController.clear();
              }
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
