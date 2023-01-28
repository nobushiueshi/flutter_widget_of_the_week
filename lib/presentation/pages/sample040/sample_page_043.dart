import 'package:flutter/material.dart';

class SamplePage043 extends StatefulWidget {
  const SamplePage043({
    super.key,
  });

  @override
  State<SamplePage043> createState() => _SamplePage043State();
}

class _SamplePage043State extends State<SamplePage043> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedSwitcher'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation, child: child);
            },
            child: Text(
              _count.toString(),
              key: ValueKey<int>(_count),
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count += 1;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
