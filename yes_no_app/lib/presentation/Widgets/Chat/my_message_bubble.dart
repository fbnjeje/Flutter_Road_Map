import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(color: Colors.black),
          child: Text(
            'lorem Ipmsun 12 123 hola hola 123',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
