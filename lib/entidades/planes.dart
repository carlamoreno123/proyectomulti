import 'dart:io';
import 'package:proyectomulti/entidades/usuarios.dart';
import 'package:proyectomulti/database.dart';

class Plan {
  // Propiedades
  int? idplan;
  String? nombreyapellidos;
  String? partecuerpo;
  String? dia;

  // Constructores
  Plan();

  // Constructor desde un mapa (para mapear los datos obtenidos de la base de datos)
  Plan.fromMap(map) {
    this.idplan = map['idplan'];
    this.nombreyapellidos = map['nombreyapellidos'];
    this.partecuerpo = map['partecuerpo'];
    this.dia = map['dia'];
  }

  // Métodos

  // Insertar un nuevo plan
  insertarPlan() async {
    var conn = await Database().conexion();
    try {
      await conn.query(
          'INSERT INTO planes(nombreyapellidos, partecuerpo, dia) VALUES (?, ?, ?)',
          [nombreyapellidos, partecuerpo, dia]);
      print('Plan insertado correctamente');
    } catch (e) {
      print('Error al insertar plan: $e');
    } finally {
      await conn.close();
    }
  }

  // Consultar todos los planes
  all() async {
    var conn = await Database().conexion();
    try {
      var resultado = await conn.query('SELECT * FROM planes');
      List<Plan> planes = resultado.map((row) => Plan.fromMap(row)).toList();
      return planes;
    } catch (e) {
      print('Error al obtener planes: $e');
      return null;
    } finally {
      await conn.close();
    }
  }

  // Consultar planes de un usuario específico
  obtenerPlanesUsuario() async {
    var conn = await Database().conexion();
    try {
      var resultado = await conn.query(
          'SELECT * FROM planes WHERE nombreyapellidos = ?',
          [this.nombreyapellidos]);
      List<Plan> planes =
          resultado.map((row) => Plan.fromMap(row)).toList();
      return planes;
    } catch (e) {
      print('Error al obtener planes por usuario: $e');
      return null;
    } finally {
      await conn.close();
    }
  }

  // Actualizar un plan
  actualizarPlan(int idplan, String partecuerpo, String dia) async {
    var conn = await Database().conexion();
    try {
      await conn.query(
          'UPDATE planes SET partecuerpo = ?, dia = ? WHERE idplan = ?',
          [partecuerpo, dia, idplan]);
      print('Plan actualizado correctamente');
    } catch (e) {
      print('Error al actualizar plan: $e');
    } finally {
      await conn.close();
    }
  }

  // Eliminar un plan
  eliminarPlan(int idplan) async {
    var conn = await Database().conexion();
    try {
      await conn.query('DELETE FROM planes WHERE idplan = ?', [idplan]);
      print('Plan eliminado correctamente');
    } catch (e) {
      print('Error al eliminar plan: $e');
    } finally {
      await conn.close();
    }
  }
}
