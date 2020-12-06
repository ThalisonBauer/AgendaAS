import 'package:AgendaAS/controllers/home_controller.dart';
import 'package:AgendaAS/models/todo_model.dart';
import 'package:AgendaAS/repositories/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class TodoRepositoryMock extends Mock implements TodoRepository {}

main() {
  final repository = TodoRepositoryMock();
  final controller = HomeControler(repository);
  test('Deve preencher variavel todo', () async {
    when(repository.fetchTodos())
        .thenAnswer((realInvocation) async => [TodoModel()]);

    await controller.start();
    expect(controller.todos.isNotEmpty, true);
  });
}
