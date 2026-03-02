// --- PANTALLA DE CONFIRMACIÓN ---
import 'package:flutter/material.dart';
class PantallaConfirmacion extends StatelessWidget {
  const PantallaConfirmacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        actions: const [Icon(Icons.menu)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡FELICIDADES!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Ilustración central simplificada
            Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.shopping_bag, size: 100, color: Colors.white,),
            ),
            const SizedBox(height: 20),
            const Text(
              'Transacción Éxitosa',
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Lorem ipsum dolor sit amet, nam etiam regione ei. Intellegam mediocritatem...',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            // Estrellas de calificación
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star_half, color: Colors.black),
                Icon(Icons.star_border, color: Colors.black),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Volver a la primera pantalla
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text("Volver a Inicio"),
            ),
          ],
        ),
      ),
    );
  }
}