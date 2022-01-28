import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  // Una lista de datos para pasar al listview

  final options = const [
    'Megaman',
    'Metal gear',
    'Super smarch',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo1'),
      ),
      body: ListView(
        children: [
          /** opciones y lo convierto en mapa, el mapa es para recorrer la lista, y el .Tolist para conertirlo a lista
          la (e) es cada elemento de la lista */
          // los 3 puntos ... es un operador spread, extrae cada uno de los elementos de la lista.
          ...options
              .map(
                (e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
