import 'package:flutter/material.dart';

class Dietas extends StatelessWidget {
  const Dietas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple, // Color morado
        title: Text(
          'Dietas Saludables',
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: const Color.fromARGB(255, 0, 0, 0)), // Icono de campana
            onPressed: () {
              // Acción para el icono de campana
            },
          ),
          IconButton(
            icon: Icon(Icons.menu, color: const Color.fromARGB(255, 0, 0, 0)), // Icono de las tres rallitas (hamburguesa)
            onPressed: () {
              // Acción para el icono de las tres rallitas
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Flecha para atrás
          onPressed: () {
            Navigator.of(context).pop(); // Acción para retroceder a la pantalla anterior
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        ),
      ),
    );
  }
}

