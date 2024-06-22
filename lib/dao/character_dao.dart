import 'package:rick_morty_app/database/app_database.dart';
import 'package:rick_morty_app/models/character.dart';
import 'package:sqflite/sqflite.dart';

class CharacterDao {
  
  Future<void> insert(Character character) async {
    try {
      Database db = await AppDatabase.openDb();
      await db.insert(AppDatabase.tableName, character.toMap());
    } on Exception catch (e) {
      print("Error inserting character: $e");
    }
  }


  Future<void> delete(Character character) async {
    try{
      Database db = await AppDatabase.openDb();
    
      await db.delete(
        AppDatabase.tableName,
        where: "id = ?",
        whereArgs: [character.id],
      );
    }catch(e) {
      print("Eror deleting character: $e");
    }
  }

  Future<bool> isFavorite (Character character) async {
    try{
      Database db = await AppDatabase.openDb();
      final List<Map<String, dynamic>> maps = await db.query(
        AppDatabase.tableName,
        where: "id = ?",
        whereArgs: [character.id],
      );
      return maps.isNotEmpty;
    }catch(e){
      print("Error checking if character is favorite: $e");
      return false;
    }
  }

  Future<List<Character>> fetchFavorites() async {
    try {
      Database db = await AppDatabase.openDb();
      final List<Map<String, dynamic>> maps = await db.query(AppDatabase.tableName);
      return maps.map((map) => Character.fromMap(map)).toList();
    } on Exception catch (e) {
      print("Error fetching favorites: $e");
      return [];
    }
  }

}