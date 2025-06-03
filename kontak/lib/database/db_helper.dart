import 'package:kontak/model/kontak.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  static final DbHelper _instance = DbHelper._internal();
  static Database? _database;

  final String tableName = 'table_kontak';
  final String columnid = 'id';
  final String columnName = 'name';
  final String columnMobileNo = 'mobileNo';
  final String columnCompany = 'company';
  final String columnEmail = 'email';

  DbHelper._internal();
  factory DbHelper() => _instance;

  Future<Database?> get _db async {
    if (_database != null) {
      return _database;
    }
    _database = await _initDb();
    return _database;
  }

  Future<Database?> _initDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'kontak.db');

    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    var sql =
        "CREATE TABLE $tableName($columnid integer primary key,"
        "$columnName text,"
        "$columnMobileNo text,"
        "$columnEmail text,"
        "$columnCompany text )";
    await db.execute(sql);
  }

  Future<int?> saveKontak(Kontak kontak) async {
    var dbClient = await _db;
    return await dbClient!.insert(tableName, kontak.toMap());
  }

  Future<List?> getAllKontak() async {
    var dbClient = await _db;
    var result = await dbClient!.query(
      tableName,
      columns: [columnid, columnName, columnMobileNo, columnEmail, columnCompany],
    );
    return result.toList();
  }

  Future<int?> updatedKontak(Kontak kontak) async {
    var dbClient = await _db;
    return await dbClient!.update(
      tableName,
      kontak.toMap(),
      where: '$columnid = ?',
      whereArgs: [kontak.id],
    );
  }

  Future<int?> deleteKontak(int id) async {
    var dbClient = await _db;
    return await dbClient!.delete(
      tableName,
      where: '$columnid = ?',
      whereArgs: [id],
    );
  }
}
