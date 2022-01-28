import 'package:flutter/material.dart';

import 'package:componentesflutter/theme/app_theme.dart';
import 'package:componentesflutter/routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        // para rutas que no estan definidas por nombres
        onGenerateRoute: AppRoutes.onGenerateRoute,
        // copyWith permite copiar el tema actual y modificar algunas cosas
        theme: AppTheme.lightTheme);
  }
}
