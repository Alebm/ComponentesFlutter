import 'package:componentesflutter/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) => ListTile(
          //menuOptions[index] para poder entrar a las opciones listadas se entra con llaves al []index
          leading: Icon(menuOptions[index].icon),
          title: Text(menuOptions[index].name),
          onTap: () {
            //forma de navegar entre pantallas sencilla pero larga
            /* final route = MaterialPageRoute(
              builder: (context) => const Listview1Screen(),
            );
            Navigator.push(context, route); */

            //navegacion con nombre mas corta
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ),
      ),
    );
  }
}
