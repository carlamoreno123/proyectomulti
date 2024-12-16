import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 165, 82, 220),
        elevation: 40,
        shadowColor: Color.fromARGB(255, 240, 189, 255),
        leading: CircleAvatar(),
        title: Text(
          'carla moreno',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        actions: [
          Icon(
            Icons.notification_important,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.menu,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 0, 0, 0),
        height: 1080,
        width: 2400,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Hola Carla!',
                style: TextStyle(
                    fontSize: 23, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Mis planes' , style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),),
                    Text('(crear un plan)',  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),),
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140,
                    width: 100,
                    color: Color.fromARGB(255, 123, 123, 126),
                  ),
                   Container(
                    height: 140,
                    width: 100,
                    color: Color.fromARGB(255, 123, 123, 126),
                  ),
                   Container(
                    height: 140,
                    width: 100,
                    color: Color.fromARGB(255, 123, 123, 126),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mis Rutinas', style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),),
                  Text('(crear rutina)', style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),)
                ],
              ),
              Container(
                height: 200,
                width: 450,
                color: Color.fromARGB(255, 160, 160, 163),
              )
            ],
        
          ),
        ),
      ),
    );
  }
}
