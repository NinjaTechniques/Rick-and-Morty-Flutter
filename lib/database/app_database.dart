import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  static int version = 1;
  static String databaseName = "rick_morty.db";
  static String tableName = "characters";
  static Database? _db;

  static Future<Database> openDb() async {

    try {
      _db ??= await openDatabase(
        join(await getDatabasesPath(), databaseName),
        version: version,
        onCreate: (db, version) {
          String query =
              """
                CREATE TABLE $tableName(
                  id INTEGER PRIMARY KEY,
                  name TEXT,
                  status TEXT,
                  gender TEXT,
                  image TEXT,
                  species TEXT
                )
              """;
          db.execute(query);
        },
      );
      return _db as Database;
    } catch (e) {
      print("Error opening databse: $e");
      rethrow;
    }
  }

}