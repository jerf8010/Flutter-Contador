


import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();
  


}

// Esta clase solo se utiliza en este archivo, por eso se hace privada
class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle( fontSize: 25 );
  int _conteo = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Stateful' ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(100, 100, 255, 0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( 'Número de clicks:', style: _estiloTexto),
            Text( '$_conteo', style: _estiloTexto ),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones() {

    return Row( 
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox( width: 30.0,),
        FloatingActionButton( 
          onPressed: _reset,
          child: Icon( Icons.exposure_zero ) 
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton( 
          onPressed: _sustraer,
          child: Icon( Icons.remove ) 
        ),
        SizedBox( width: 5.0),
        FloatingActionButton( 
          onPressed: _agregar,
          child: Icon( Icons.add ) 
        )

      ],
    );
  }

  void _sustraer() {
    setState( () => _conteo-- );
  }
  void _reset() {
    setState(() => _conteo = 0 );
  }

  void _agregar() {
   
    setState( () => _conteo++ );
  }

}