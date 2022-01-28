import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

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
          title: const Text('ListView tipo2'),
        ),
        // listView y sus contructores, el separate sirve para crear las listas con separador
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(
              options[index],
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          // los guiones bajos se utilizan para decir que no se est utilizando el argumento
          separatorBuilder: (_, __) => const Divider(
            thickness: 2.0,
          ),
        ));
  }
}
