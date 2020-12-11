import 'package:flutter/material.dart';
import 'lista_medidas.dart';

class Lista extends StatefulWidget {
  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Lista'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: medidas4.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(medidas4[index]),
                leading: Icon(Icons.adjust),
              );
            },
          ),
        ),
      ),
    );
  }
}
