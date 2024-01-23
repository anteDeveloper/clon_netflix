import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  const ItemRedondeado({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 110.0,
            width: 110.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(110.0),
              border: Border.all(
                color: Colors.yellow,
                width: 2.0,
              ),
            ),
            child: ClipOval(
              child: Image.network(
                'https://images.milenio.com/vgsGeptvA1azgWLe80kzIw2mpEA=/942x532/uploads/media/2020/05/26/dark-se-transmite-por-netflix_80_221_1251_778.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Image.asset(
            'assets/img/LOGO-DARK.png',
            width: 100.0,
          )
        ],
      ),
    );
  }
}
