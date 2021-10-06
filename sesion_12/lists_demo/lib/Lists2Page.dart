import 'package:flutter/material.dart';

class Lists2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Listas")),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return myCard(index);
          },
        ));
  }

  Widget myCard(int index) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(15),
        elevation: 10,
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
              title: Text("Titulo $index"),
              subtitle: Text("Este es el subtitulo"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.plus_one),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                  onPressed: () => {print("Aceptar $index")},
                  child: Text("Aceptar")),
              TextButton(
                  onPressed: () => {print("Cancelar $index")},
                  child: Text("Cancelar")),
            ]),
          ],
        ));
  }
} // fin de class
