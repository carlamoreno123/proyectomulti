import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Importar servicios para copiar al portapapeles

class Social extends StatelessWidget {
  const Social({super.key});

  // Función para copiar texto al portapapeles
  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text)).then((_) {
      // Mostrar un mensaje cuando el texto ha sido copiado
      print("Texto copiado al portapapeles!");
    });
  }

  @override
  Widget build(BuildContext context) {
    // Texto que se quiere copiar
    String textToCopy = 'si';

    return Scaffold(
      appBar: AppBar(title: const Text("Copiar al portapapeles")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Mostrar el texto que se puede copiar
          Text(
            textToCopy,
            style: TextStyle(fontSize: 24),
          ),
        ],
      )),
    );
  }
}
