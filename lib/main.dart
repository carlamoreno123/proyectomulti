import 'package:flutter/material.dart';
import 'package:proyectomulti/screens/crearcuenta.dart';
import 'package:proyectomulti/screens/iniciosesion.dart';
import 'screens/Homescreen.dart';
import 'screens/plan.dart';
import 'screens/social.dart';
import 'screens/dietas.dart';
import 'screens/perfil.dart';
import 'screens/si.dart';
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
    home: Dietas(),
   
    );
  }
}
