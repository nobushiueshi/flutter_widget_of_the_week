import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SamplePage124 extends StatefulWidget {
  const SamplePage124({
    super.key,
  });

  @override
  State<SamplePage124> createState() => _SamplePage124State();
}

class _SamplePage124State extends State<SamplePage124> {
  late final SharedPreferences sharedPreferences;

  int count = 0;

  @override
  void initState() {
    super.initState();

    Future(() async {
      sharedPreferences = await SharedPreferences.getInstance();
      if (mounted) {
        setState(() {
          count = sharedPreferences.getInt('counter') ?? 0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('shared_preferences'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await sharedPreferences.remove('counter');
              count = 0;
              setState(() {});
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            count.toString(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          count++;
          await sharedPreferences.setInt('counter', count);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
