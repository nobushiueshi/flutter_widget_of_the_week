import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SamplePage085 extends StatefulWidget {
  const SamplePage085({
    super.key,
  });

  @override
  State<SamplePage085> createState() => _SamplePage085State();
}

class _SamplePage085State extends State<SamplePage085> {
  final String databaseName = 'sample.db';
  final List<String> migrationScripts = [
    'CREATE TABLE test (id INTEGER PRIMARY KEY, name TEXT)',
  ];
  Database? db;
  List<Map<String, Object?>>? maps = [];

  @override
  void initState() {
    super.initState();
    Future(() async {
      final databasesPath = await getDatabasesPath();
      final path = join(databasesPath, databaseName);
      db = await openDatabase(
        path,
        version: migrationScripts.length,
        onCreate: (database, version) async {
          debugPrint('onCreate');
          for (var i = 0; i < version; i++) {
            await database.execute(migrationScripts[i]);
          }
        },
        onUpgrade: (database, oldVersion, newVersion) async {
          debugPrint('onUpgrade');
          for (var i = oldVersion; i < newVersion; i++) {
            await database.execute(migrationScripts[i]);
          }
        },
      );
      await query();
    });
  }

  Future<void> query() async {
    maps = await db?.rawQuery('SELECT * FROM Test');
    setState(() {});
  }

  Future<void> increment() async {
    await db?.transaction<void>((txn) async {
      await txn.rawInsert(
        'INSERT INTO Test(name) VALUES("${DateTime.now().toLocal()}")',
      );
    });
    await query();
  }

  @override
  void dispose() {
    Future(() async {
      await db?.close();
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sqflite'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: maps?.length ?? 0,
          itemBuilder: (context, index) {
            final map = maps![index];
            final id = map['id'] ?? 0;
            final name = map['name'] ?? '';
            return ListTile(
              title: Text('id : $id'),
              subtitle: Text('$name'),
              dense: true,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
