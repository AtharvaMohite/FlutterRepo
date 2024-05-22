import "package:sqflite/sqflite.dart";
import 'package:path/path.dart';
import '../model/model_class.dart';
import 'dart:developer';

class DatabaseModel {
  static dynamic database;

  static Future openDB() async {
    database = await openDatabase(
      join(await getDatabasesPath(), "TaskDataBase2.db"),
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            '''CREATE TABLE TasksTable(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT,description TEXT,date TEXT,isCompleted INTEGER)''');
        log(":db created");
      },
    );
  }

  static Future getData() async {
    Database db = database;

    final List tasks = await db.query("TasksTable");

    log("hhhhhhhhhhh $tasks");

    return List.generate(
        tasks.length,
        (i) => TodoModel(
            id: tasks[i]["id"],
            title: tasks[i]["title"],
            description: tasks[i]["description"],
            date: tasks[i]["date"],
            isCompleted: tasks[i]["isCompleted"]));
  }

  static void insertDB(TodoModel todoobj) async {
    print("in insert ${todoobj.description}");
    Database db1 = database;

    await db1.insert(
      "TasksTable",
      todoobj.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static void updateDB(TodoModel todoModel) async {
    log("in update id== ${todoModel.id}");
    Database db = database;

    await db.update(
      "TasksTable",
      todoModel.toMap(),
      where: "id = ?",
      whereArgs: [todoModel.id],
    );
  }

  static void deletefromDB(int id) async {
    Database db = database;
    print("in delete $id");

    await db.delete("TasksTable", where: "id=?", whereArgs: [id]);
  }
}
