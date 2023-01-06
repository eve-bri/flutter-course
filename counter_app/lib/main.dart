import 'package:counter_app/screens/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*
  * Cuando los componente de los Widget no cambien se deben de poner con const
  */
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        //Quita la etiqueta "debug" de la esquina derecha superior
        debugShowCheckedModeBanner: false,
        home: CounterScreen());
  }
}
