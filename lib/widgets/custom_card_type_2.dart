import 'package:componentesflutter/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //clipBehavior sirve para cortar el contenido en tarjerta
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(.25),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/img/jar-loading.gif'),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          /* //! con este if puedo condicionar que se vea o no el container,
          ya que con el ! le digo a flutter que confie que llega un dato o no al name */
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name!),
            ),
        ],
      ),
    );
  }
}
