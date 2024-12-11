import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas de Imágenes'),
      ),
      body: Center(
        child: ListView(
          key: GlobalKey(),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(8.0),
          children: [
            const SizedBox(),
            _buildCard('Pedro Pascal', 'assets/pedro_pascal.jpg'),
            _buildCard('Alfonso Herrera', 'assets/alfonso_herrera.jpg'),
            _buildCard('Robert De Niro', 'assets/robert_de_niro.jpg'),
            _buildCard('Leonardo DiCaprio', 'assets/leonardo_dicaprio.jpg'),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String name, String assetPath) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: 200,
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(36.0)),
              child: Image.asset(
                assetPath,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
