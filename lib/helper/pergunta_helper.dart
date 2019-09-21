import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class PerguntaProvaide {

  static final String perguntaTable = "perguntaTable";
  static final String idColumn = "idColum";
  static final String enunciadoColumn = "enunciadoColumn";

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
    final path = join(databasesPath, 'preguntanew.db');

    return await openDatabase(
        path, version: 1, onCreate: (Database db, int newerVersion) async {
      await db.execute(
          "CREATE TABLE $perguntaTable($idColumn INTEGER PRIMARE KEY, $enunciadoColumn TEXT,)"

      );
    }
    );
  }

  Future<Pergunta> insert(Pergunta pergunta) async {
    pergunta.id = await (await db).insert(perguntaTable, pergunta.toMap());
    return pergunta;
  }

  Future<int> delete(int id) async {
    retun await (await db).delete(
        perguntaTable, where: '$idColumn = 2', whereArgs: [id]);
  }

  Future close () async => (await db).close();
}




