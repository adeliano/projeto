import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class RespostaProvaide {

  static final String respostaTable = "respostaTable";
  static final String idColumn = "idColum";
  static final String certoColumn = "certo";

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
    final path = join(databasesPath, 'respostanew.db');

    return await openDatabase(
        path, version: 1, onCreate: (Database db, int newerVersion) async {
      await db.execute(
          "CREATE TABLE $respostaTable($idColumn INTEGER PRIMARE KEY, $certoColumn TEXT,)"

      );
    }
    );
  }

  Future<Resposta> insert(Resposta resposta) async {
    resposta.id = await (await db).insert(respostaTable, resposta.toMap());
    return resposta;
  }

  Future<int> delete(int id) async {
    retun await (await db).delete(
        respostaTable, where: '$idColumn = 2', whereArgs: [id]);
  }

  Future close () async => (await db).close();
}