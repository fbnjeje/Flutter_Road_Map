import 'package:flutter/material.dart';

class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soy el mapa soy el mapa'),
      ),
      body: Center(
        child: TextButton(
            child: const Text('Home'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
