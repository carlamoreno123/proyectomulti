import 'dart:io';

import 'package:proyectomulti/database.dart';

class Usuario {
  //propiedades
  int? idusuario;
  String? nombreyapellidos;
  String? password;
  String? dni;
  int? edad;
  String? genero;
  String? peso;
  String? altura;

 
  //Constructores

  Usuario();
  Usuario.fromMap(map) {
    this.idusuario = map['idusuario'];
    this.nombreyapellidos = map[' nombreyapellidos'];
    this.password = map['password'];
    this.dni = map['dni'];
    this.edad = map['edad'];
    this.genero = map['genero'];
    this.peso = map['peso'];
    this.altura = map['altura'];
  }

  //Metodos

  loginUsuario() async {
    var conn = await Database().conexion();
    try {
      var resultado = await conn.query(
          'SELECT * FROM usuarios WHERE  nombreyapellidos = ?',
          [this.nombreyapellidos]);
      Usuario usuario = Usuario.fromMap(resultado.first);
      if (this.password == usuario.password) {
        return usuario;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    } finally {
      await conn.close();
    }
  }

  all() async {
    var conn = await Database().conexion();
    try {
      var resultado = await conn.query('SELECT * FROM usuarios');
      List<Usuario> usuarios =
          resultado.map((row) => Usuario.fromMap(row)).toList();
      return usuarios;
    } catch (e) {
      print(e);
    } finally {
      await conn.close();
    }
  }

  insertarUsuario() async {
    var conn = await Database().conexion();
    try {
      await conn.query(
          'INSERT INTO usuarios( nombreyapellidos,password,dni,edad,peso,genero,peso,altura) VALUES (?,?,?,?,?,?,?,?)',
          [
            nombreyapellidos,
            password,
            dni,
            edad,
            genero,
            peso,
            altura,
          ]);
      print('Usuario insertado correctamente');
    } catch (e) {
      print(e);
    } finally {
      await conn.close();
    }
  }
}
