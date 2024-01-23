import 'package:flutter/material.dart';

class ItemImagen extends StatelessWidget {
  const ItemImagen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Image.network(
        'https://pics.filmaffinity.com/dark-111203947-large.jpg',
        width: 110.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
