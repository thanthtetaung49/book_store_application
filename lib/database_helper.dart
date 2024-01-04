import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Database? _database;
List wholeDataList = [];

class LocalDatabase {
  String table = 'book_store_table';

  String colId = "id";
  String colTitle = "title";
  String colCategory = "category";
  String colDescription = "description";
  String colImage = "image_path";
  String colPdfPath = "pdf_file_path";
  String colAuthor = "author";
  String rating = "rating";

  Future get database async {
    if (_database != null) return _database;
    _database = await initializeDB("local");
    return _database;
  }

  Future initializeDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDb);
  }

  Future _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $table (
        $colId INTEGER PRIMARY KEY AUTOINCREMENT,
        $colTitle TEXT,
        $colCategory TEXT,
        $colDescription TEXT,
        $colImage TEXT,
        $colPdfPath TEXT,
        $colAuthor TEXT,
        $rating INTEGER,
      )
      ''');
  }

  // insert database
  Future addDataLocally({title}) async {
    final db = await database;
    await db.insert(table, {"title": title});
  }

// read database and display database
  Future readAllData() async {
    final db = await database;
    final allData = await db!.query(table);
    wholeDataList = allData;
  }

// delete database
  Future deleteDatabase({id}) async {
    final db = await database;
    await db!.delete(table, where: 'id=?', whereArgs: [id]);
  }
}
