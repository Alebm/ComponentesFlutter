import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.green[800],
              backgroundImage: const NetworkImage(
                  'https://i.pinimg.com/736x/6d/72/f9/6d72f9f2efcbf84bb977e883a71de40c.jpg'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/736x/6d/72/f9/6d72f9f2efcbf84bb977e883a71de40c.jpg'),
        ),
      ),
    );
  }
}
