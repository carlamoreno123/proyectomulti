import 'package:flutter/material.dart';

class Iniciosesion extends StatelessWidget {
  const Iniciosesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            // Imagen agregada
            Image.asset(
              'assets/images/imagen copy.webp',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 50),
            Text(
              '¡Bienvenido!',
              style: TextStyle(
                fontSize: 50,
                color: Color.fromARGB(255, 70, 70, 192),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escribe aquí...',
                hintText: 'nombre de usuario',
              ),
            ),
            SizedBox(height: 30),
            TextField(
              obscureText: true, // Oculta la contraseña
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escribe aquí...',
                hintText: 'contraseña',
              ),
            ),
          ],
        ),
      ),
    );
  }
}