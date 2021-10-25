import 'dart:convert';

import 'package:http/http.dart' as http;

import 'Todo.dart';

void main() {
  getJson();
}

Future<void> getJson() async {
  final url = 'https://jsonplaceholder.typicode.com/todos/1';
  final parseUrl = Uri.parse(url);
  final response = await http.get(parseUrl);

  print(response.statusCode);
  if (response.statusCode == 200) {
    final respuestaJson = response.body;
    final jsonMap = jsonDecode(respuestaJson);
    final todo = Todo.fromJson(jsonMap);
    print(todo.title);
  }
}
