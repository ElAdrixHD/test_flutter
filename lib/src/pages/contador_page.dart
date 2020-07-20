import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage>{

  final _styles = TextStyle(fontSize: 25.0);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Numero de Taps", style: _styles,),
            Text("$_conteo", style: _styles,),
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _removeContador,),
        Expanded(child: SizedBox(width: 5.0,)),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _lessContador,),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _addContador,),
      ],
    );
  }

  void _addContador() {
    setState(() {
      _conteo++;
    });
  }

  void _lessContador() {
    setState(() {
      _conteo--;
    });
  }

  void _removeContador() {
    setState(() {
      _conteo = 0;
    });
  }

}// Fin de la clase State