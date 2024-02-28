import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DB {
  DB._();

  static final DB instance = DB._();

  static Database? _database;

  get database async {
    if (_database != null) return _database;

    _database = await _initDB();
    return _database;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'results.db');
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute(_exercises);
    await db.execute(_results);
  }

  String get _exercises => '''
    CREATE TABLE treinos (
      id TEXT,
      treino TEXT
    );
  ''';
  String get _results => '''
    CREATE TABLE results (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      result TEXT,
      type TEXT
    );
  ''';
}
