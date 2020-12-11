import 'package:flutter/material.dart';
import 'lista.dart';

class CalculadoraApp extends StatefulWidget {
  CalculadoraApp({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CalculadoraAppState createState() => _CalculadoraAppState();
}

class _CalculadoraAppState extends State<CalculadoraApp> {
  final _formKey = GlobalKey<FormState>();
  final campoAController = TextEditingController();
  final campoBController = TextEditingController();
  final campoCController = TextEditingController();
  final resultadoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.number,
                controller: campoAController,
                decoration: InputDecoration(
                  labelText: 'Campo A',
                  icon: Icon(Icons.label),
                  labelStyle: TextStyle(fontSize: 20),
                ),
                style: TextStyle(fontSize: 20),
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Campo vazio';
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: campoBController,
                decoration: InputDecoration(
                  labelText: 'Campo B',
                  icon: Icon(Icons.label),
                  labelStyle: TextStyle(fontSize: 20),
                ),
                style: TextStyle(fontSize: 20),
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Campo vazio';
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: campoCController,
                decoration: InputDecoration(
                  labelText: 'Campo C',
                  icon: Icon(Icons.label),
                  labelStyle: TextStyle(fontSize: 20),
                ),
                style: TextStyle(fontSize: 20),
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Campo vazio';
                  }
                },
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  controller: resultadoController,
                  style: TextStyle(fontSize: 20),
                  readOnly: true,
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Calcular'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          num a = num.parse(campoAController.text);
                          num b = num.parse(campoBController.text);
                          num c = num.parse(campoCController.text);
                          num r = (b * c) / a;
                          String resultadoFormatado =
                              '$b -> ${r.toStringAsFixed(2)} -> ${r.round()}';
                          resultadoController.text = resultadoFormatado;
                          campoBController.text = '';
                        }
                      },
                    ),
                    RaisedButton(
                      child: Text('Lista'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Lista(),
                          ),
                        );
                      },
                    ),
                    RaisedButton(
                      child: Text('Limpar'),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () {
                        campoAController.text = '';
                        campoBController.text = '';
                        campoCController.text = '';
                        resultadoController.text = '';
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
