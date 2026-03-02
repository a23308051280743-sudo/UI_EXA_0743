import 'package:flutter/material.dart';
import 'package:myapp/mispantallas/inicio.dart';

void main() {
  runApp(const MiAppDeCompras());
}

class MiAppDeCompras extends StatelessWidget {
  const MiAppDeCompras({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maqueta de Tienda',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      home: const PantallaPrincipal(),
    );
  }
}



