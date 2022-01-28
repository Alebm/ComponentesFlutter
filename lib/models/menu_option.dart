import 'package:flutter/Material.dart';

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;
// entre llaves para que no tenga que ser obligatorio el orden de los datos, required obligatori
  MenuOption({
    required this.route,
    required this.icon,
    required this.name,
    required this.screen,
  });
}
