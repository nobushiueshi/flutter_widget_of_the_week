import 'package:flutter/material.dart';

class SamplePage019 extends StatelessWidget {
  const SamplePage019({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip'),
      ),
      body: SafeArea(
        child: Center(
          child: Tooltip(
            message: 'ボタンの説明文をいれる',
            preferBelow: false,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('長押しで説明文'),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'ここにも説明文がはいる',
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
