import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class SamplePage118 extends StatefulWidget {
  const SamplePage118({
    super.key,
  });

  @override
  State<SamplePage118> createState() => _SamplePage118State();
}

class _SamplePage118State extends State<SamplePage118> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('badges'),
        centerTitle: true,
      ),
      body: Center(
        child: Badge(
          showBadge: counter > 0,
          badgeContent: Text(
            counter.toString(),
            style: const TextStyle(color: Colors.white),
          ),
          child: const FlutterLogo(
            size: 64,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
