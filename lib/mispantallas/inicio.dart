// --- PANTALLA PRINCIPAL ---
import 'package:flutter/material.dart';
import 'package:myapp/carrito.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        actions: const [Icon(Icons.menu)],
      ),
      body: Column(
        children: [
          // Banner de oferta
          Container(
            height: 200,
            color: Colors.blue[100],
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '50%\nDESCUENTO',
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                // Representación simplificada del personaje/bolsa
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black45,
                  child: const Center(child: Text("Oferta")),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // Barra de búsqueda simulada
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.search),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Grid de categorías
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              padding: const EdgeInsets.all(10),
              children: [
                _buildCategoriaItem(Icons.accessibility, "Ropa"),
                _buildCategoriaItem(Icons.wallet, "Zapatos"),
                _buildCategoriaItem(Icons.watch, "Relojes"),
                _buildCategoriaItem(Icons.phone_android, "Tech"),
                _buildCategoriaItem(Icons.business_center, "Bolsos"),
                _buildCategoriaItem(Icons.more_horiz, "Ver más"),
              ],
            ),
          ),
          // Botón para ir a la siguiente pantalla
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PantallaCarrito()),
                );
              },
              child: const Text("Ir al Carrito"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriaItem(IconData icono, String nombre) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: Icon(icono, color: Colors.white, size: 30),
        ),
        const SizedBox(height: 5),
        Text(nombre, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12),),
      ],
    );
  }
}