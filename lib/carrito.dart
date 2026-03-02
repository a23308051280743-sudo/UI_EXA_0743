// --- PANTALLA DEL CARRITO ---
import 'package:flutter/material.dart';
import 'package:myapp/confirmacion.dart';

class PantallaCarrito extends StatelessWidget {
  const PantallaCarrito({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Icon(Icons.shopping_cart),
        centerTitle: true,
        actions: const [Icon(Icons.menu)],
      ),
      body: Column(
        children: [
          // Lista de productos simplificada
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: Colors.grey[200],
            width: double.infinity,
            child: const Text("Tus Productos"),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildCarritoItem(Icons.accessibility, "Vestido Negro"),
                _buildCarritoItem(Icons.wallet, "Tacones Elegantes"),
                _buildCarritoItem(Icons.business_center, "Maletín de Cuero"),
              ],
            ),
          ),
          // Campo de texto para comentarios simulado
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Lorem ipsum dolor sit amet..."),
              ),
            ),
          ),
          // Botón de compra
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(
              color: Colors.black,
              minWidth: double.infinity,
              height: 50,
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PantallaConfirmacion()),
                );
              },
              child: const Text("COMPRAR", style: TextStyle(color: Colors.white, fontSize: 18),),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCarritoItem(IconData icono, String nombre) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      color: Colors.grey[100],
      child: Row(
        children: [
          Container(
            width: 50, height: 50,
            color: Colors.black45,
            child: Icon(icono, color: Colors.white),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(nombre)),
          const Column(
            children: [
              Text("-"),
              Text("1"),
              Text("+"),
            ],
          ),
        ],
      ),
    );
  }
}