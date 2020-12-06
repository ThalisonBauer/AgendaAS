// import 'dart:html';
import 'package:AgendaAS/models/todo_model.dart';
import 'package:dio/dio.dart';

class TodoRepository {
  Dio dio;
  final url = 'https://jsonplaceholder.typicode.com/users';

  TodoRepository([Dio contact]) : dio = contact ?? Dio();

  Future<List<TodoModel>> fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;
    return list.map((json) => TodoModel.fromJson(json)).toList();
  }
}
