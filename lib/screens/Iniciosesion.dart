import 'package:flutter/material.dart';
import 'package:proyectomulti/screens/crearcuenta.dart';

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
            SizedBox(height: 150),
            // Imagen agregada

            SizedBox(height: 100),
            Text(
              '¡Bienvenido!',
              style: TextStyle(
                fontSize: 50,
                color: Color.fromARGB(255, 0, 0, 0),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Escribe aquí...',
                    hintText: 'nombre de usuario',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'nombre de',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Text(
                  'usuario',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            TextField(
              obscureText: true, // Oculta la contraseña
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escribe aquí...',
                hintText: 'contraseña',
              ),
            ),
            
            
            Text(
                  'contraseña',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    decoration: TextDecoration.underline,
                  ),
                ),
                
              ],
            ),
            SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('¿No tienes cuenta? clica '),
                 ElevatedButton(
                onPressed: () {const Crearcuenta();},
                child: Text(
                  'Aquí',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              ],
            )
          
        ]),
        
      )
    );
    
  }
}
