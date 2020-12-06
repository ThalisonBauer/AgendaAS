import 'package:AgendaAS/models/todo_model.dart';
import 'package:AgendaAS/repositories/todo_repository.dart';

class HomeControler {
  List<TodoModel> todos = [];
  final TodoRepository _repository;

  HomeControler([TodoRepository repository])
      : _repository = repository ?? TodoRepository();

  Future start() async {
    todos = await _repository.fetchTodos();
  }
}
