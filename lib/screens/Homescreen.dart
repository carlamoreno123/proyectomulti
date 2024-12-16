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
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 0, 0, 0),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                'Hola Carla!',
                style: TextStyle(
                    fontSize: 23, color: Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mis planes',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      '(crear un plan)',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 123, 123, 126),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 123, 123, 126),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 123, 123, 126),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    SizedBox(width: 10,),
                       Container(
                      height: 200,
                      width: 150,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 123, 123, 126),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mis Rutinas',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  Text(
                    '(crear rutina)',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 200,
                width: 450,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 160, 160, 163),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  '+ Crear rutina',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 176, 56, 223),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Social',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.edit,
                      color: Color.fromARGB(255, 132, 25, 203),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 179, 179, 183),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 179, 179, 183),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.food_bank),
                    label: 'Mis dietas',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.safety_check),
                    label: 'Hablar con un profesional',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Mi perfil',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
