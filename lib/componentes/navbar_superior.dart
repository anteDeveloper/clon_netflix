import 'package:flutter/material.dart';

class NavBarSuperior extends StatelessWidget {
  const NavBarSuperior({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/img/logonetflix.png',
          width: 30.0,
        ),
        Text(
          'Programas',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        Text(
          'Peliculas',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        Text(
          'Mi lista',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        )
      ],
    );
  }
}
