import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text('Alert'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Contenido de la alerta'),
            SizedBox(height: 30),
            FlutterLogo(size: 100)
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          )
        ],
      ),
    );
  }

//Creando funcion para mostrar alerta en Void para qu no devuelva
// mero como argumento el context mediante el buildcontext
  void displayDialogAndroid(BuildContext context) {
    showDialog(
      // barrierDismissible sirve para cerrar el dialogo tap afuera
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        title: const Text('Alerta'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Contenido de la alerta'),
            SizedBox(height: 30),
            FlutterLogo(size: 100)
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: const Text('Mostrar Alerta'),
            // mostrar alerta
            //envio el context desde la funcion
            onPressed: () => Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIos(context)),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
