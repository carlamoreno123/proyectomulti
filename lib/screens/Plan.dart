import 'package:flutter/material.dart';

class Plan extends StatelessWidget {
  const Plan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple, // Color morado
        title: Text(
          'Plan de Ejercicio',
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
        leading: CircleAvatar(
          radius: 15, // Tamaño del avatar
          // Imagen del avatar
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Contenedor principal
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Icon(Icons.arrow_back,color: Color.fromARGB(255, 255, 255, 255),),
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                    width: 207,
                    height: 348,
                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                  ),
                  SizedBox(height: 30), // Espacio entre los elementos

                  // Título 'PIERNA'
                  SizedBox(
                    width: 116,
                    height: 24,
                    child: Text(
                      'PIERNA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.88,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Descripción del ejercicio
                  SizedBox(
                    width: 407,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Perfecto, aquí tienes la descripción de un ejercicio físico sencillo pero eficaz:\nSentadilla con peso corporal (Bodyweight Squat):\nDescripción:                           La sentadilla es un ejercicio compuesto que trabaja principalmente los músculos de las piernas (cuádriceps, glúteos, isquiotibiales) y fortalece el core. Es ideal para mejorar la fuerza, la estabilidad y la postura.\nInstrucciones:\n  Duracion: 8 min\n  Repeticiones:  4  series de 10 repeticiones\n Descanso: 30s\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 1.27,
                            ),
                          ),
                          TextSpan(
                            text: 'Posición inicial:\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 1.27,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30), // Espacio después de la descripción

                  // Espacio para iconos o más información si es necesario
                  Container(
                    width: 24,
                    height: 24,
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [],
                    ),
                  ),
                  SizedBox(height: 200,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
