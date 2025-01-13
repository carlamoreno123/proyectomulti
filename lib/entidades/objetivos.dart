import 'dart:io';
import 'package:proyectomulti/entidades/usuarios.dart';
import 'package:proyectomulti/database.dart';

class Objetivo {
  // Propiedades
  int? idobjetivo;
  String? nombreyapellidos;
  String? objetivo;
  String? dia;
  bool? hecho;

  // Constructores
  Objetivo();

  // Constructor desde un mapa (para mapear los datos obtenidos de la base de datos)
  Objetivo.fromMap(map) {
    this.idobjetivo = map['idobjetivo'];
    this.nombreyapellidos = map['nombreyapellidos'];
    this.objetivo = map['objetivo'];
    this.dia = map['dia'];
    this.hecho = map['hecho'] == 1; // Convertir de 1/0 a booleano
  }

  // Métodos

  // Insertar un nuevo objetivo
  insertarObjetivo() async {
    var conn = await Database().conexion();
    try {
      await conn.query(
          'INSERT INTO objetivos(nombreyapellidos, objetivo, dia, hecho) VALUES (?, ?, ?, ?)',
          [nombreyapellidos, objetivo, dia, hecho == true ? 1 : 0]);
      print('Objetivo insertado correctamente');
    } catch (e) {
      print('Error al insertar objetivo: $e');
    } finally {
      await conn.close();
    }
  }

  // Consultar todos los objetivos
  all() async {
    var conn = await Database().conexion();
    try {
      var resultado = await conn.query('SELECT * FROM objetivos');
      List<Objetivo> objetivos = resultado.map((row) => Objetivo.fromMap(row)).toList();
      return objetivos;
    } catch (e) {
      print('Error al obtener objetivos: $e');
      return null;
    } finally {
      await conn.close();
    }
  }

  // Consultar objetivos de un usuario específico
  obtenerObjetivosUsuario() async {
    var conn = await Database().conexion();
    try {
      var resultado = await conn.query(
          'SELECT * FROM objetivos WHERE nombreyapellidos = ?',
          [this.nombreyapellidos]);
      List<Objetivo> objetivos =
          resultado.map((row) => Objetivo.fromMap(row)).toList();
      return objetivos;
    } catch (e) {
      print('Error al obtener objetivos por usuario: $e');
      return null;
    } finally {
      await conn.close();
    }
  }

  // Actualizar un objetivo
  actualizarObjetivo(int idobjetivo, String objetivo, String dia, bool hecho) async {
    var conn = await Database().conexion();
    try {
      await conn.query(
          'UPDATE objetivos SET objetivo = ?, dia = ?, hecho = ? WHERE idobjetivo = ?',
          [objetivo, dia, hecho == true ? 1 : 0, idobjetivo]);
      print('Objetivo actualizado correctamente');
    } catch (e) {
      print('Error al actualizar objetivo: $e');
    } finally {
      await conn.close();
    }
  }

  // Eliminar un objetivo
  eliminarObjetivo(int idobjetivo) async {
    var conn = await Database().conexion();
    try {
      await conn.query('DELETE FROM objetivos WHERE idobjetivo = ?', [idobjetivo]);
      print('Objetivo eliminado correctamente');
    } catch (e) {
      print('Error al eliminar objetivo: $e');
    } finally {
      await conn.close();
    }
  }
}
