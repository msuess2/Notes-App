import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = await getDatabasesPath();
    final databasePath = join(path, 'notes_database.db');

    return await openDatabase(databasePath, version: 1, onCreate: _createDatabase);
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE notes(
        id INTEGER PRIMARY KEY,
        title TEXT,
        content TEXT,
        creationDate TEXT
        totalTags INT
      )
    ''');

    await db.execute('''
      CREATE TABLE tags(
        id INTEGER PRIMARY KEY,
        name TEXT
        totalNotes INTEGER
        lastDate TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE note_tag(
        note_id INTEGER,
        tag_id INTEGER,
        FOREIGN KEY (note_id) REFERENCES notes(id),
        FOREIGN KEY (tag_id) REFERENCES tags(id)
      )
    ''');
  }
}