
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle( fontSize: 25 );
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Titulo' ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(100, 100, 255, 0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( 'Número de clicks:', style: estiloTexto),
            Text( '$conteo', style: estiloTexto ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: () {
          
        },
        backgroundColor: Color.fromARGB(255, 255, 0, 255),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

