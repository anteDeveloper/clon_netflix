import 'package:clon_netflix/componentes/cartel_principal.dart';
import 'package:clon_netflix/componentes/item_imagen.dart';
import 'package:clon_netflix/componentes/item_redondeado.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          CartelPrincipal(),
          ListaHorizontal('Avances', ItemRedondeado(), 9),
          ListaHorizontal('Programas sobre viajes', ItemImagen(), 10),
          ListaHorizontal('Tendencias', ItemImagen(), 10),
          ListaHorizontal('Mi lista', ItemImagen(), 10),
        ],
      ),
      bottomNavigationBar: this.navInferior(),
    );
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
      backgroundColor: Colors.black12,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined), label: 'Proximente'),
        BottomNavigationBarItem(
            icon: Icon(Icons.download_for_offline_rounded), label: 'Descargas'),
        BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined), label: 'Mas'),
      ],
    );
  }

  Widget ListaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      //alinear columnas
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }
}
