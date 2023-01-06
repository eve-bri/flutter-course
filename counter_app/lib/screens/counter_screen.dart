import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //StatefulWidget la vista se puede cambiar fácilmente despues de pintada.
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //Variable para el tamaño del texto
    TextStyle fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      //Scaffold prepara la aplcación para trabajar en ella
      appBar: AppBar(
        title: const Center(
          child: Text('CounterScreen'), //child solo se puede poner un hijo
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
      floatingActionButton: CustomFloatingActions(
          increaseFn: increase, //Envio referencia, no la ejecuto
          decreaseFn: decrease,
          resetFn: reset),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions(
      {super.key,
      required this.increaseFn,
      required this.decreaseFn,
      required this.resetFn});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(),
        ),
/*
            const SizedBox(
              width: 20,
            ), //Para agregar espacios entre 2 elementos
*/
        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: () {
            resetFn();
          },
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}
