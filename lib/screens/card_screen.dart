import 'package:flutter/material.dart';

import 'package:componentesflutter/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            CustomCard(),
            SizedBox(height: 20),
            CustomCardType2(
              name: 'Lindo cielo',
              imageUrl:
                  'https://www.tuexperto.com/wp-content/uploads/2020/03/los-14-mejores-bancos-de-imagenes-hd-para-descargar-gratis-de-2020-1080x810.jpg',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://www.lucushost.com/blog/wp-content/uploads/2018/02/ejemplo-imagen-pexels.jpeg',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Sander-Grefte.jpg',
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
