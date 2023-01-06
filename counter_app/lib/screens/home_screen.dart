import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //StatelessWidget una vez se pita la vista, no se puede cambiar fácilmente.
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Variable para el tamaño del texto
    TextStyle fontSize30 = const TextStyle(fontSize: 30);

    int counter = 0;

    return Scaffold(
      //Scaffold prepara la aplcación para trabajar en ella
      appBar: AppBar(
        title: const Center(
          child: Text('HomeScreen'), //child solo se puede poner un hijo
        ),
        elevation: 10.0, //Sombra
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Alineacion vertical
          children: <Widget>[
            Text(
              'Clicks Counter:',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: fontSize30,
            )
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat, //Mover el boton
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          counter++;
          print('Hola mundo: $counter');
        },
      ),
    );
  }
}
