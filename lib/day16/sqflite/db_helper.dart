// import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:ppkd_flutter_1/day16/model/peserta.dart';
import 'package:ppkd_flutter_1/day16/model/user.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> databaseHelper() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'login.db'),
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE users(id INTEGER PRIMARY KEY, email TEXT, password TEXT)',
        );
        await db.execute(
          'CREATE TABLE peserta(id INTEGER PRIMARY KEY, nama TEXT, email TEXT, nama_event TEXT, asal_kota TEXT)',
        );
      },

      version: 2,
    );
  }

  static Future<void> registerUser(User user) async {
    final db = await databaseHelper();
    await db.insert(
      'users',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> registerPeserta(Peserta peserta) async {
    final db = await databaseHelper();
    await db.insert(
      'peserta',
      peserta.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<User?> loginUser(String email, String password) async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query(
      'users',
      where: 'email = ? AND password = ? ',
      whereArgs: [email, password],
    );

    if (results.isNotEmpty) {
      return User.fromMap(results.first);
    }
    return null;
  }

  static Future<List<Peserta>> getAllPesertas() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('peserta');
    return results.map((e) => Peserta.fromMap(e)).toList();
  }

  static Future<void> updatePeserta(Peserta peserta) async {
    final db = await databaseHelper();
    await db.update(
      'peserta',
      peserta.toMap(),
      where: 'id = ?',
      whereArgs: [peserta.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<void> deletePeserta(int id) async {
    final db = await databaseHelper();
    await db.delete('peserta', where: 'id = ?', whereArgs: [id]);
  }
}
