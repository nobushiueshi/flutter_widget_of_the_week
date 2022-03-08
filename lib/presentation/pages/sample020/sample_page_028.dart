import 'package:flutter/material.dart';

class SamplePage028 extends StatefulWidget {
  const SamplePage028({
    Key? key,
  }) : super(key: key);

  @override
  State<SamplePage028> createState() => _SamplePage028State();
}

class _SamplePage028State extends State<SamplePage028> {
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
        title: const Text('Dismissible'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            final str = _list[index];
            return Dismissible(
              key: ValueKey(str),
              background: Container(
                color: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerLeft,
                child: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerRight,
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
              child: ListTile(
                title: Text(str),
              ),
              onDismissed: (direction) {
                setState(() {
                  _list.removeAt(index);
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('$strを削除しました'),
                      ),
                    );
                  }
                });
              },
            );
          },
          itemCount: _list.length,
        ),
      ),
    );
  }
}
