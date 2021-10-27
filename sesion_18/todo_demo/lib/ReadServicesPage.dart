import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:todo_demo/Todo.dart';

class ReadServicesPage extends StatefulWidget {
  ReadServicesPage({Key? key}) : super(key: key);

  @override
  _ReadServicesPageState createState() => _ReadServicesPageState();
}

class _ReadServicesPageState extends State<ReadServicesPage> {
  String contenido = "";
  bool isLoading = true;
  bool error = false;

  @override
  void initState() {
    super.initState();
    getDataList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Read Services ")),
      body: Container(
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : error
                  ? Text(
                      "Error al descargar imagen",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    )
                  : Image.network(contenido),
        ),
      ),
    );
  }

  void getDataList() async {
    final url = "https://jsonplaceholder.typicode.com/posts";
    final parseUrl = Uri.parse(url);
    final response = await http.get(parseUrl);
    print(response.body);
    if (response.statusCode == 200) {
      final jsonData = response.body;
      var jsonMap = jsonDecode(jsonData) as List;
      print(jsonMap);
      //final todo = Todo.fromJson(jsonMap);

    }
    if (response.statusCode != 200) {
      setState(() {
        isLoading = false;
        error = true;
      });
    }
  }

  void getData() async {
    final url = "https://jsonplaceholder.typicode.com/photos/1";
    final parseUrl = Uri.parse(url);
    final response = await http.get(parseUrl);

    if (response.statusCode == 200) {
      final jsonData = response.body;
      final jsonMap = jsonDecode(jsonData);
      final todo = Todo.fromJson(jsonMap);
      setState(() {
        isLoading = false;
        contenido = todo.url;
      });
    }
    if (response.statusCode != 200) {
      setState(() {
        isLoading = false;
        error = true;
      });
    }
  }
}// fin de clase
