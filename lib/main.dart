import 'package:flutter/material.dart';

void main() => runApp(const AppTiendademaquillaje());

class AppTiendademaquillaje extends StatelessWidget {
  const AppTiendademaquillaje({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Productos(),
    );
  }
}

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    // Datos de ejemplo para las tarjetas
    final List<Map<String, String>> items = [
      {
        'titulo': 'Base de Maquillaje',
        'subtitulo': 'Cobertura total para un look impecable.',
        'url': 'https://raw.githubusercontent.com/KeylaPalacios/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/producto%2011.png'
      },
      {
        'titulo': 'Paleta de Sombras',
        'subtitulo': 'Colores vibrantes para cada ocasión.',
        'url': 'https://raw.githubusercontent.com/KeylaPalacios/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/producto%202.png'
      },
      {
        'titulo': 'Labial Rojo Intenso',
        'subtitulo': 'Larga duración y acabado mate.',
        'url': 'https://raw.githubusercontent.com/KeylaPalacios/Imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/producto1.png'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tienda de maquillaje Keyla la Palacios 6J',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 252, 161, 191),
        leading: const Icon(
          Icons.camera_alt,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite,
                color: Color.fromARGB(255, 205, 151, 255)),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.edit,
                color: Color.fromARGB(255, 111, 173, 253)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            margin: const EdgeInsets.all(10.0),
            elevation: 5.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item['url']!),
              ),
              title: Text(item['titulo']!),
              subtitle: Text(item['subtitulo']!),
              trailing: const Icon(Icons.favorite, color: Colors.red),
              onTap: () {
                // Acción al tocar la tarjeta
              },
            ),
          );
        },
      ),
    );
  }
}
