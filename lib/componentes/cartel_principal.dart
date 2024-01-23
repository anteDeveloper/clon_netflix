import 'package:clon_netflix/componentes/navbar_superior.dart';
import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget {
  const CartelPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        cabecera(),
        infoSerie(),
        botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: [
        Image.network(
          'https://hips.hearstapps.com/hmg-prod/images/the-witcher-personajes-1578432294.jpg',
          height: 350.0,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Colors.black38, Colors.black],
            ),
          ),
        ),
        SafeArea(
          child: NavBarSuperior(),
        ),
      ],
    );
  }

  Widget infoSerie() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Fantasia',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
          SizedBox(
            width: 6,
          ),
          Icon(
            Icons.fiber_manual_record_rounded,
            color: Colors.red,
            size: 5,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            'Drama',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
          SizedBox(
            width: 6,
          ),
          Icon(
            Icons.fiber_manual_record_rounded,
            color: Colors.red,
            size: 5,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            'Accion',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
          SizedBox(
            width: 6,
          ),
          Icon(
            Icons.fiber_manual_record_rounded,
            color: Colors.red,
            size: 5,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            'Hechiceros',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          )
        ],
      ),
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.check,
                color: Colors.white,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                'Mi lista',
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              )
            ],
          ),
          TextButton.icon(
            style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10)),
            onPressed: () {},
            icon: Icon(Icons.play_arrow),
            label: Text('Reproducir'),
          ),
          Column(
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                'Informacion',
                style: TextStyle(color: Colors.white, fontSize: 10.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
