import 'package:flutter/material.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple, // Color morado
        title: Text(
          'Carla Moreno',
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications,
                color: const Color.fromARGB(255, 0, 0, 0)), // Icono de campana
            onPressed: () {
              // Acción para el icono de campana
            },
          ),
          IconButton(
            icon: Icon(Icons.menu,
                color: const Color.fromARGB(
                    255, 0, 0, 0)), // Icono de las tres rallitas (hamburguesa)
            onPressed: () {
              // Acción para el icono de las tres rallitas
            },
          ),
        ],
        leading: CircleAvatar(
          radius: 15,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          color: Colors.black, 
          child: SingleChildScrollView(
            child: Column(
              
              children: [
                SizedBox(
                  height: 10,
                ),
                Icon(Icons.arrow_back,
                    color: Color.fromARGB(255, 255, 255, 255)),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Social',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      'Media',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
