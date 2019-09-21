import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class ItemProvaide {

  static final String itemTable = "itemTable";
  static final String idColumn = "idColum";
  static final String descricaoColumn = "descricaoColumn";

  Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    } else {
      _db = await initDb();
      return _db;
    }
  }

  Future<Database> initDb() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'itemnew.db');

    return await openDatabase(
        path, version: 1, onCreate: (Database db, int newerVersion) async {
      await db.execute(
          "CREATE TABLE $itemTable($idColumn INTEGER PRIMARE KEY, $descricaoColumn TEXT,)"

      );
    }
    );
  }

  Future<Item> insert(Item item) async {
    item.id = await (await db).insert(itemTable, item.toMap());
    return item;
  }

  Future<int> delete(int id) async {
    retun await (await db).delete(
        itemTable, where: '$idColumn = 2', whereArgs: [id]);
  }

  Future close() async => (await db).close();
}
