import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';
import '../models/todo.dart';

// Events
abstract class TodoEvent {}

class AddTodo extends TodoEvent {
  final String title;
  AddTodo(this.title);
}

class ToggleTodo extends TodoEvent {
  final String id;
  ToggleTodo(this.id);
}

class DeleteTodo extends TodoEvent {
  final String id;
  DeleteTodo(this.id);
}

// States
class TodoState {
  final List<Todo> todos;

  TodoState({required this.todos});
}

// BLoC
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState(todos: [])) {
    on<AddTodo>((event, emit) {
      final newTodo = Todo(
        id: const Uuid().v4(),
        title: event.title,
      );
      emit(TodoState(todos: [...state.todos, newTodo]));
    });

    on<ToggleTodo>((event, emit) {
      final updatedTodos = state.todos.map((todo) {
        if (todo.id == event.id) {
          return todo.copyWith(isCompleted: !todo.isCompleted);
        }
        return todo;
      }).toList();
      emit(TodoState(todos: updatedTodos));
    });

    on<DeleteTodo>((event, emit) {
      final updatedTodos =
          state.todos.where((todo) => todo.id != event.id).toList();
      emit(TodoState(todos: updatedTodos));
    });
  }
}
