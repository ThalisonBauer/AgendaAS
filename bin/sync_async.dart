import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  final todo = await fetch();
  print(todo.name);
}

Future<Todo> fetch() async {
  var url = 'http://jsonplaceholder.typicode.com/users/1';
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  var todo = Todo.fromJson(json);
  return todo;
}

class Todo {
  final int id;
  final String name;
  final String username;
  final String email;

  Todo({this.id, this.name, this.username, this.email});

  factory Todo.fromJson(Map json) {
    return Todo(
        id: json['id'],
        name: json['name'],
        username: json['username'],
        email: json['email']);
  }
  Map toJson() {
    return {'id': id, 'name': name, 'username': username, 'email': email};
  }
}
