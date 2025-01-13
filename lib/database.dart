import 'package:mysql1/mysql1.dart';

class Database {
  // Propiedades
  final String _host = 'localhost';
  final int _port = 3306;
  final String _user = 'root';
  final String _dbName = 'proyectofacturascasa'; // Nombre de la base de datos ya existente

  // Métodos
  // Método de conexión sin crear la base de datos ni las tablas
  Future<MySqlConnection> conexion() async {
    var settings = ConnectionSettings(
      host: this._host,
      port: this._port,
      user: this._user,
      db: this._dbName,  
    );

    return await MySqlConnection.connect(settings);
  }


//Crear tabla contraseña
  _crearTablaUsuarios(conn) async {
    await conn.query('''CREATE TABLE IF NOT EXISTS password(
        idusuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        password VARCHAR(255) NOT NULL,
      )''');

  // Puedes agregar funciones para interactuar con las tablas, por ejemplo:
  
  // Obtener los usuarios
  Future<void> obtenerUsuarios() async {
    var conn = await conexion();
    try {
      var results = await conn.query('SELECT idusuario, nombreyapellidos FROM usuarios');
      for (var row in results) {
        print('Usuario: ${row[1]} ${row[2]} (ID: ${row[0]})');
      }
    } catch (e) {
      print('Error obteniendo usuarios: $e');
    } finally {
      await conn.close();
    }
  }


  // Agregar un nuevo usuario
  Future<void> insertarUsuario(String nombreyapellidos, String password, String dni, int edad, String genero, String peso, String altura) async {
    var conn = await conexion();
    try {
      var result = await conn.query(
        'INSERT INTO usuarios (nombreyapellidos,password, dni, edad, genero,peso, altura) VALUES (?, ?, ?,?,?,?,?)', 
        [nombreyapellidos,password,dni, edad, genero,peso, altura]
      );
      print('Usuario agregado con ID: ${result.insertId}');
    } catch (e) {
      print('Error agregando usuario: $e');
    } finally {
      await conn.close();
    }
  }

  
}
}
