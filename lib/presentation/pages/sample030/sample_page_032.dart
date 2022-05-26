import 'package:flutter/material.dart';

class SamplePage032 extends StatefulWidget {
  const SamplePage032({
    super.key,
  });

  @override
  State<SamplePage032> createState() => _SamplePage032State();
}

class _SamplePage032State extends State<SamplePage032> {
  final _listKey = GlobalKey<AnimatedListState>();

  final _data = <String>[
    '0',
    '1',
    '2',
    '3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedList'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: AnimatedList(
          key: _listKey,
          initialItemCount: _data.length,
          itemBuilder: (context, index, animation) {
            return _SamplePage032Item(
              animation: animation,
              title: Text(_data[index]),
              onTap: () {
                final removeIndex = index;
                final removeItem = _data[index];

                _SamplePage032Item builder(
                  BuildContext context,
                  Animation<double> animation,
                ) {
                  return _SamplePage032Item(
                    animation: animation,
                    title: Text(removeItem),
                  );
                }

                _data.removeAt(removeIndex);
                _listKey.currentState!.removeItem(removeIndex, builder);
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final index = _data.length;
            _data.insert(index, index.toString());
            _listKey.currentState!.insertItem(index);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _SamplePage032Item extends StatelessWidget {
  const _SamplePage032Item({
    required this.animation,
    this.title,
    this.onTap,
  });

  final Animation<double> animation;
  final Widget? title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: title,
        onTap: onTap,
      ),
    );
  }
}
