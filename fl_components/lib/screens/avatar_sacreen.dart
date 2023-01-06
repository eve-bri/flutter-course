import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.indigo[900],
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 130,
          backgroundImage: NetworkImage(
              'https://cdn.alfabetajuega.com/alfabetajuega/abj_public_files/multimedia/imagenes/201704/188706.alfabetajuega-deadpool.jpg'),
        ),
      ),
    );
  }
}
