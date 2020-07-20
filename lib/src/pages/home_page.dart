import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final styles = TextStyle(fontSize: 25.0);
  final conteo = 10;

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
            Text("Numero de Taps", style: styles,),
            Text("$conteo", style: styles,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{print("He pulsado el botón")},
        child: Icon(Icons.add),
      ),
    );
  }

}