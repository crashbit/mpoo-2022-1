import 'package:flutter/material.dart';

class ListsDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          contenedor(),
          contenedor(),
          contenedor(),
          contenedor(),
          Text("Hola mundo", style: TextStyle(fontSize: 40)),
          Image.asset("assets/images/gato.jpeg", scale: 1.0),
        ],
      ),
    );
  }

  Widget contenedor() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 200,
        color: Colors.blue,
        child: Center(
          child: Text("Hola mundo"),
        ),
      ),
    );
  }
}
