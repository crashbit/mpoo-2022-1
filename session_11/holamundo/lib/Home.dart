import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mi primera app")),
      body: miWidget(),
      drawer: miDrawer(),
    );
  }

  Widget miWidget() {
    return Container(
      color: Colors.deepOrangeAccent,
      child: Padding(
        padding: EdgeInsets.all(100),
        child: Container(
          color: Colors.purple,
          child: miLista(),
        ),
      ),
    );
  }

  Widget miLista() {
    return Row(
      children: [
        Text("uno"),
        Text("dos"),
        Text("tres"),
        Text("cuatro"),
      ],
    );
  }

  Widget miDrawer() {
    return Drawer(
        child: Container(
      color: Colors.amberAccent,
      child: Center(
          child: Text("Este es el drawer", style: TextStyle(fontSize: 30))),
    ));
  }
} // Fin de clase
