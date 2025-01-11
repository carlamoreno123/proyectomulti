import 'package:flutter/material.dart';
import 'package:proyectomulti/screens/Crearcuenta.dart';
import 'package:proyectomulti/screens/Iniciosesion.dart';
import 'screens/Homescreen.dart';
import 'screens/Plan.dart';
import 'screens/Social.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Social(),
   
    );
  }
}
