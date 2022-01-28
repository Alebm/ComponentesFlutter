import 'package:flutter/material.dart';

import 'package:componentesflutter/theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.ac_unit,
              color: AppTheme.primary,
            ),
            title: Text('Titulo'),
            subtitle: Text(
                'Exercitation pariatur irure qui cupidatat aliquip officia sunt minim deserunt.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('ok'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
