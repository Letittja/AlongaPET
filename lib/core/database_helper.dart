import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class DatabaseHelper {
  // Nome e versão do banco
  static const _databaseName = "AlongaPetDB.db";
  static const _databaseVersion = 1;

  // Tabelas
  static const tableUsuario = 'usuario';
  static const tablePet = 'pet';

  // Padrão Singleton
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;
  
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // Inicialização do banco no diretório do aparelho
  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    
    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  // Script de criação inicial (DDL) mapeado do DBML
  Future _onCreate(Database db, int version) async {
    // 1. Cria a tabela de Usuário
    await db.execute('''
      CREATE TABLE $tableUsuario (
        usuario_id INTEGER PRIMARY KEY AUTOINCREMENT,
        usuario_nome TEXT NOT NULL,
        usuario_email TEXT UNIQUE NOT NULL,
        usuario_senha_hash TEXT NOT NULL
      )
    ''');

    // 2. Cria a tabela do Pet com Chave Estrangeira e restrição UNIQUE (1:1)
    await db.execute('''
      CREATE TABLE $tablePet (
        pet_id INTEGER PRIMARY KEY AUTOINCREMENT,
        pet_nome TEXT NOT NULL,
        pet_nivel INTEGER NOT NULL,
        pet_energia INTEGER NOT NULL,
        pet_postura INTEGER NOT NULL,
        pet_felicidade INTEGER NOT NULL,
        usuario_id INTEGER NOT NULL UNIQUE,
        FOREIGN KEY (usuario_id) REFERENCES $tableUsuario (usuario_id)
      )
    ''');
  }

  // MÉTODOS DE MANIPULAÇÃO (DML)

  // Insere um novo usuário (Retorna o usuario_id gerado)
  Future<int> insertUsuario(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(tableUsuario, row);
  }

  // Insere o pet inicial associado ao usuário
  Future<int> insertPet(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(tablePet, row);
  }

  // Busca os dados do usuário atual (Pega o primeiro registro no ambiente local)
  Future<Map<String, dynamic>?> getUsuario() async {
    Database db = await instance.database;
    List<Map<String, dynamic>> result = await db.query(tableUsuario, limit: 1);
    if (result.isNotEmpty) return result.first;
    return null;
  }

  // Busca o status atual do Pet
  Future<Map<String, dynamic>?> getPet() async {
    Database db = await instance.database;
    List<Map<String, dynamic>> result = await db.query(tablePet, limit: 1);
    if (result.isNotEmpty) return result.first;
    return null;
  }
}