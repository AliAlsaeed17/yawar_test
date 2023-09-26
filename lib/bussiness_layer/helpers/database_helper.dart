import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  Future<Database> get database async {
    if (_database != null && _database!.isOpen) {
      return _database!;
    } else {
      _database = await initDatabase();
      return _database!;
    }
  }

  DatabaseHelper.internal();

  Future<Database> initDatabase() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final String path = '${dir.path}/posts.db';
    final Database database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
             CREATE TABLE IF NOT EXISTS posts (
               id INTEGER PRIMARY KEY,
               image TEXT
             )
           ''');
      },
    );
    return database;
  }

  Future<int> savePost(int id, String image) async {
    final Database db = await database;
    return db.rawInsert('''
         INSERT INTO posts (id, image) VALUES (?, ?)
       ''', [id, image]);
  }

  Future<List<Map<String, dynamic>>> getAllPosts() async {
    final Database db = await database;
    return db.query('posts');
  }
}
