import 'dart:math';

import 'package:flutter/material.dart';

class ContainerSrceen extends StatefulWidget {
  const ContainerSrceen({Key? key}) : super(key: key);

  @override
  State<ContainerSrceen> createState() => _ContainerSrceenState();
}

class _ContainerSrceenState extends State<ContainerSrceen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(15);

  void changeShape() {
    // traemos la bibiloteca math y sacamos el random
    final random = Random();
    // lo paso a double con el .toDouble y le sumo 50 para que siempre xomience de 50 a 300
    _width = random.nextInt(300).toDouble() + 50;
    _height = random.nextInt(300).toDouble() + 50;
    _color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(
          Icons.play_circle_outline,
          size: 35,
        ),
      ),
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: Center(
        child: AnimatedContainer(
          //duraction obligatorio
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInToLinear,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
    );
  }
}
