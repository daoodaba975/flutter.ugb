import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  late Future<Database> database;
  List<Map<String, dynamic>> users = [];

  @override
  void initState() {
    super.initState();
    database = initializeDatabase();
    fetchItem();
  }

  Future<Database> initializeDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'userapp.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT)',
        );
      },
    );
  }

  void fetchItem() async {
    final db = await database;
    final fetchedItems = await fetchItems(db);
    setState(() {
      users = fetchedItems;
    });
  }

  Future<void> insertItem(String name) async {
    final db = await database;
    await addElement(db, name);
    fetchItem();
  }

  Future<void> removeItem(int id) async {
    final db = await database;
    await deleteElement(db, id);
    fetchItem();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User App',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            title: Text(user['name'],
                style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                    color: Colors.purple)),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.purple),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    String name = '';
                    return AlertDialog(
                      title: Text('Voulez-vous supprimer cet utilisateur ?',
                          style: TextStyle(color: Colors.purple)),
                      actions: [
                        TextButton(
                          child: Text('Annuler'),
                          onPressed: () => Navigator.pop(context),
                        ),
                        TextButton(
                          child: Text('Oui'),
                          onPressed: () {
                            removeItem(user['id']);
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.purple),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              String name = '';
              return AlertDialog(
                title: Text('Ajouter un utilisateur',
                    style: TextStyle(color: Colors.purple)),
                content: TextField(
                  onChanged: (value) {
                    name = value;
                  },
                ),
                actions: [
                  TextButton(
                    child: Text('Annuler'),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    child: Text('Ajouter'),
                    onPressed: () {
                      insertItem(name);
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Future<void> addElement(Database db, String name) async {
    await db.insert(
      'users',
      {'name': name},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> deleteElement(Database db, int id) async {
    await db.delete(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<Map<String, dynamic>>> fetchItems(Database db) async {
    return await db.query('users');
  }
}
