// para hacer una especie de rutas globales,
import 'package:flutter/material.dart';

import 'package:componentesflutter/models/menu_option.dart';
import 'package:componentesflutter/screens/screens.dart'; // una sola ruta general para todo

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //Creamos las rutas con el formato de listas que definimos en MenuOptions
    MenuOption(
      route: 'home',
      icon: Icons.home,
      name: 'Home Screen',
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'listview1',
      icon: Icons.list,
      name: 'list view 1',
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      icon: Icons.list_alt,
      name: 'list view 2',
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'alertscreen',
      icon: Icons.access_alarms_outlined,
      name: 'Alert Screen',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'cardscreen',
      icon: Icons.calendar_view_day_rounded,
      name: 'Card Screen',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'avatarscreen',
      icon: Icons.supervised_user_circle,
      name: 'Avatar Screen',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'containerscreen',
      icon: Icons.play_circle_fill_outlined,
      name: 'Container Screen',
      screen: const ContainerSrceen(),
    ),
    MenuOption(
      route: 'inputsscreen',
      icon: Icons.input_outlined,
      name: 'Inputs Screen',
      screen: const InputsScreen(),
    ),
    MenuOption(
      route: 'sliderscreen',
      icon: Icons.social_distance_rounded,
      name: 'Slider Screen and Check',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'infinityscroll',
      icon: Icons.info,
      name: 'Infinity Scroll',
      screen: const InfinityScrollScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // se contruye lo que pide routes en main, un map de rutas

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listview1': (context) => const Listview1Screen(),
    'listview2': (context) => const Listview2Screen(),
    'alertscreen': (context) => const AlertScreen(),
    'cardscreen': (context) => const CardScreen(),
  };
 */
  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
