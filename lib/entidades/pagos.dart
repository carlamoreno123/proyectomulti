import 'dart:io';
import 'package:proyectomulti/entidades/usuarios.dart';
import 'package:proyectomulti/database.dart';

class Pago {
  // Propiedades
  int? idpago;
  String? nombreyapellidos;
  String? suscripcion;
  double? coste;
  bool? pagado;

  // Constructores
  Pago();

  // Constructor desde un mapa (para mapear los datos obtenidos de la base de datos)
  Pago.fromMap(map) {
    this.idpago = map['idpago'];
    this.nombreyapellidos = map['nombreyapellidos'];
    this.suscripcion = map['suscripcion'];
    this.coste = map['coste'];
    this.pagado = map['pagado'] == 1; // MySQL guarda booleanos como 1 (verdadero) y 0 (falso)
  }

  // Métodos

  // Iniciar un pago (agregar un nuevo pago)
  insertarPago() async {
    var conn = await Database().conexion();
    try {
      await conn.query(
          'INSERT INTO pagos(nombreyapellidos, suscripcion, coste, pagado) VALUES (?, ?, ?, ?)',
          [nombreyapellidos, suscripcion, coste, pagado == true ? 1 : 0]);
      print('Pago insertado correctamente');
    } catch (e) {
      print('Error al insertar pago: $e');
    } finally {
      await conn.close();
    }
  }

  // Consultar todos los pagos
  all() async {
    var conn = await Database().conexion();
    try {
      var resultado = await conn.query('SELECT * FROM pagos');
      List<Pago> pagos = resultado.map((row) => Pago.fromMap(row)).toList();
      return pagos;
    } catch (e) {
      print('Error al obtener pagos: $e');
      return null;
    } finally {
      await conn.close();
    }
  }

  // Consultar los pagos de un usuario específico
  obtenerPagosUsuario() async {
    var conn = await Database().conexion();
    try {
      var resultado = await conn.query(
          'SELECT * FROM pagos WHERE nombreyapellidos = ?',
          [this.nombreyapellidos]);
      List<Pago> pagos =
          resultado.map((row) => Pago.fromMap(row)).toList();
      return pagos;
    } catch (e) {
      print('Error al obtener pagos por usuario: $e');
      return null;
    } finally {
      await conn.close();
    }
  }

  // Actualizar el estado del pago
  actualizarPago(int idpago, bool estado) async {
    var conn = await Database().conexion();
    try {
      await conn.query(
          'UPDATE pagos SET pagado = ? WHERE idpago = ?',
          [estado == true ? 1 : 0, idpago]);
      print('Pago actualizado correctamente');
    } catch (e) {
      print('Error al actualizar pago: $e');
    } finally {
      await conn.close();
    }
  }

  // Eliminar un pago
  eliminarPago(int idpago) async {
    var conn = await Database().conexion();
    try {
      await conn.query('DELETE FROM pagos WHERE idpago = ?', [idpago]);
      print('Pago eliminado correctamente');
    } catch (e) {
      print('Error al eliminar pago: $e');
    } finally {
      await conn.close();
    }
  }
}
