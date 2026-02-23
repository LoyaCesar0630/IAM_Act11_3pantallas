import 'package:flutter/material.dart';
import 'package:myapp/widgets/pagina1.dart';
import 'package:myapp/widgets/pagina2.dart';
import 'package:myapp/widgets/pagina3.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegación Flutter',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const PaginaInicio(),
        '/segunda': (BuildContext context) => const SegundaPagina(),
        '/tercera': (BuildContext context) => const TerceraPagina(),
      },
    );
  }
}




