import 'package:flutter/material.dart';
import 'package:proyectomulti/screens/Homescreen.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple, // Color morado
        title: Text(
          'Carla Moreno',
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontSize: 25,
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
          radius: 25, // Tamaño del avatar
          // Imagen del avatar
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
        
            Container(
              width: 440,
              height: 956,  // Puedes ajustar el tamaño del contenedor o hacerlo más pequeño si es necesario
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.black),
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Color.fromARGB(255, 255, 255, 255),)),
                SizedBox(height: 50,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Perfil\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.75,
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        Text(
                          'Nombre: Carla Moreno ',
                          style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.75,
                        ),
                        ),
                   SizedBox(height: 25,),
                          Text(
                          'Contraseña: dslajdliusa ',
                          style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.75,
                        ),
                        ),
                         SizedBox(height: 25,),
                        Text('Edad: 25 años', style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.75,
                        ),),
                         SizedBox(height: 25,),
                         Text(' Peso: 60kg', style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.75,
                        ),),
                         SizedBox(height: 25,),
                          Text('Estatura: 1.60m ', style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.75,
                        ),),
                         SizedBox(height: 25,),
                        Text('Obejetivo: Bajar de peso', style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 32,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.75,
                        ),),
                        
                      ],
                      
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                Row(children: [
                  TextButton(onPressed: (){const Homescreen();}, child: Text('Cerrar sesion',style: TextStyle(
                          color: const Color.fromARGB(255, 255, 0, 0),
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.75,
                        ),))
                ],)
                ],
              ),
            ),
            // Puedes agregar más widgets dentro del Column para que se desplazen también
            
          ],
        ),
      ),
    );
  }
}
      
         
      
           
          
          
        
      
    
  