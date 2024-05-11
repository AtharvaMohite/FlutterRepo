import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import "foodlist.dart";

class Database1 {
  static dynamic database;
  // static String? breakfastTable;
  // static  String? lunchTable;
  // static  String? dinnerTable;

  static Future openDb() async {
    database = await openDatabase(
      join(await getDatabasesPath(), "FoodDB13.db"),
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''CREATE TABLE breakfastTable(
        id INTEGER PRIMARY KEY AUTOINCREMENT, 
        date TEXT,
        name TEXT, 
        calories REAL, 
        protein REAL,   
        carbohydrates REAL, 
        fat REAL,
        servings  INTEGER       )''');
        await db.execute(
            '''CREATE TABLE lunchTable(id INTEGER PRIMARY KEY AUTOINCREMENT,date TEXT, name TEXT, calories REAL, protein REAL, carbohydrates REAL, fat REAL,servings  INTEGER)''');
        await db.execute(
            '''CREATE TABLE dinnerTable(id INTEGER PRIMARY KEY AUTOINCREMENT,date TEXT, name TEXT, calories REAL, protein REAL, carbohydrates REAL, fat REAL,servings  INTEGER)''');

        await db.execute('''

          CREATE TABLE foodlist123(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, calories REAL, protein REAL, carbohydrates REAL, fat REAL,servings  INTEGER)

          ''');
        print("Database created");
      },
    );
  }

  static Future insertDB(String tablename, Food foodItem) async {
    var localdb = database;
    //print("////////// ${foodItem.toMap()}");

    await localdb.insert(tablename, foodItem.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    print("food inserted");
  }

  static void insertcals(String tablename, Info info1) async {
    var localdb = database;

    await localdb.insert(tablename, info1.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  // static updatedb(int id) async {
  //   var localdb = database;

  //   await localdb.update(

  //   );
  // }

  static Future getData(String table) async {
    final db = database;

    final List foodmap = await db.query(table);
    print("listttt  === $foodmap");

    return List.generate(foodmap.length, (i) {
      return Food(
          id: foodmap[i]["id"],
          date: foodmap[i]["date"],
          name: foodmap[i]["name"],
          calories: foodmap[i]["calories"],
          protein: foodmap[i]["protein"],
          carbohydrates: foodmap[i]["carbohydrates"],
          fat: foodmap[i]["fat"],
          servings: foodmap[i]["servings"]);
    });
  }

  // static Future getData1233(String table) async {
  //   final db = database;

  //   final List foodmap = await db.query(table);
  //   print("listttt  === $foodmap");

  //   return List.generate(foodmap.length, (i) {
  //     return Food(
  //             name: foodmap[i]["name"],
  //             calories: foodmap[i]["calories"],
  //             protein: foodmap[i]["protein"],
  //             carbohydrates: foodmap[i]["carbohydrates"],
  //             fat: foodmap[i]["fat"],
  //             servings: foodmap[i]["servings"])
  //         .toMap();
  //   });
  // }

  Future getCals(String table) async {
    final db = database;

    final List calsmap = await db.query(table);

    return List.generate(calsmap.length, (i) {
      return Info();
    });
  }
}
