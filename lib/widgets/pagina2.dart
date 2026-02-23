import 'package:flutter/material.dart';

// --- PÁGINA 2: IMAGEN Y BOTÓN ---
class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Improved contrast: black text on green might be hard to read.
        title: const Text("Segunda Página", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Imagen desde la red con bordes redondeados
            // Corrected: Image.network does not have a 'placeholder' argument.
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg', // Placeholder URL
                height: 200,
                fit: BoxFit.cover, // Ensure image covers the area
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green[100]),
              onPressed: () => Navigator.pushNamed(context, '/tercera'),
              child: const Text("Ir a la Tercera Página", style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
