import 'dart:io';
import 'package:proyectomulti/entidades/usuarios.dart';
import 'package:proyectomulti/database.dart';

class Dieta {
  // Propiedades
  int? iddieta;
  String? nombreyapellidos;
  String? dieta;
  String? dias;

  // Constructores
  Dieta();

  // Constructor desde un mapa (para mapear los datos obtenidos de la base de datos)
  Dieta.fromMap(map) {
    this.iddieta = map['iddieta'];
    this.nombreyapellidos = map['nombreyapellidos'];
    this.dieta = map['dieta'];
    this.dias = map['dias'];
  }

  // Métodos

  // Insertar una nueva dieta
  insertarDieta() async {
    var conn = await Database().conexion();
    try {
      await conn.query(
          'INSERT INTO dietas(nombreyapellidos, dieta, dias) VALUES (?, ?, ?)',
          [nombreyapellidos, dieta, dias]);
      print('Dieta insertada correctamente');
    } catch (e) {
      print('Error al insertar dieta: $e');
    } finally {
      await conn.close();
    }
  }

  // Consultar todas las dietas
  all() async {
    var conn = await Database().conexion();
    try {
      var resultado = await conn.query('SELECT * FROM dietas');
      List<Dieta> dietas = resultado.map((row) => Dieta.fromMap(row)).toList();
      return dietas;
    } catch (e) {
      print('Error al obtener dietas: $e');
      return null;
    } finally {
      await conn.close();
    }
  }

  // Consultar dietas de un usuario específico
  obtenerDietasUsuario() async {
    var conn = await Database().conexion();
    try {
      var resultado = await conn.query(
          'SELECT * FROM dietas WHERE nombreyapellidos = ?',
          [this.nombreyapellidos]);
      List<Dieta> dietas =
          resultado.map((row) => Dieta.fromMap(row)).toList();
      return dietas;
    } catch (e) {
      print('Error al obtener dietas por usuario: $e');
      return null;
    } finally {
      await conn.close();
    }
  }

  // Actualizar una dieta
  actualizarDieta(int iddieta, String dieta, String dias_a_hacer) async {
    var conn = await Database().conexion();
    try {
      await conn.query(
          'UPDATE dietas SET dieta = ?, dias = ? WHERE iddieta = ?',
          [dieta, dias, iddieta]);
      print('Dieta actualizada correctamente');
    } catch (e) {
      print('Error al actualizar dieta: $e');
    } finally {
      await conn.close();
    }
  }

  // Eliminar una dieta
  eliminarDieta(int iddieta) async {
    var conn = await Database().conexion();
    try {
      await conn.query('DELETE FROM dietas WHERE iddieta = ?', [iddieta]);
      print('Dieta eliminada correctamente');
    } catch (e) {
      print('Error al eliminar dieta: $e');
    } finally {
      await conn.close();
    }
  }
}
