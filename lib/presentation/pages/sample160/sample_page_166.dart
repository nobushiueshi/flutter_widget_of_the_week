import 'dart:collection';

import 'package:flutter/material.dart';

class SamplePage166 extends StatefulWidget {
  const SamplePage166({super.key});

  @override
  State<SamplePage166> createState() => _SamplePage166State();
}

class _SamplePage166State extends State<SamplePage166> {
  final model = SamplePage166Model();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UnmodifiableListView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Text('items: ${model.items.length}'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(model.add);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SamplePage166Model {
  SamplePage166Model();

  final _items = ['Item 1', 'Item 2', 'Item 3'];
  UnmodifiableListView<String> get items =>
      UnmodifiableListView<String>(_items);

  void add() {
    _items.add('Item ${_items.length + 1}');
  }
}
