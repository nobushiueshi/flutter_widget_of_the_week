import 'dart:math';

import 'package:flutter/material.dart';

class SamplePage030 extends StatefulWidget {
  const SamplePage030({
    Key? key,
  }) : super(key: key);

  @override
  State<SamplePage030> createState() => _SamplePage030State();
}

class _SamplePage030State extends State<SamplePage030>
    with SingleTickerProviderStateMixin {
  final _notifier = _Sample030Notifier();
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('_SamplePage030State#build');

    final animation = Tween(
      begin: 0,
      end: 2 * pi,
    ).animate(_controller);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ValueListenableBuilder'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ValueListenableBuilder<int>(
                valueListenable: _notifier,
                builder: (context, value, child) {
                  return Text(value.toString());
                },
              ),
              const SizedBox(height: 200),
              ValueListenableBuilder<num>(
                valueListenable: animation,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                builder: (context, value, child) {
                  return Transform.rotate(
                    angle: animation.value.toDouble(),
                    child: child,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _notifier.change(_notifier.value + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _Sample030Notifier extends ValueNotifier<int> {
  _Sample030Notifier() : super(0);

  void change(int i) {
    value = i;
    notifyListeners();
  }
}
