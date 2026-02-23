import 'package:flutter/material.dart';

// --- PÁGINA 3: CONTAINER ---
class TerceraPagina extends StatelessWidget {
  const TerceraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Improved contrast: purple text on navy blue is very hard to read.
        title: const Text("Tercera Página", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF000080), // Azul Marino (Navy)
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(15),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black, // Added opacity for better visual
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: const Center(child: Text("¡Llegaste!", style: TextStyle(color: Colors.black, fontSize: 20))),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
              child: const Text("Volver al Inicio"),
            ),
          ],
        ),
      ),
    );
  }
}