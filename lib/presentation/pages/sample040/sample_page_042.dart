import 'package:flutter/material.dart';

class SamplePage042 extends StatefulWidget {
  const SamplePage042({
    Key? key,
  }) : super(key: key);

  @override
  State<SamplePage042> createState() => _SamplePage042State();
}

class _SamplePage042State extends State<SamplePage042> {
  final _list = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReorderableListView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ReorderableListView.builder(
          itemCount: _list.length,
          itemBuilder: (context, index) {
            return ListTile(
              key: ValueKey(_list[index]),
              title: Text(_list[index]),
            );
          },
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex--;
              }
              final tmp = _list[oldIndex];
              _list
                ..removeAt(oldIndex)
                ..insert(newIndex, tmp);
            });
          },
        ),
      ),
    );
  }
}
