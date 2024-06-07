import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SamplePage147 extends StatefulWidget {
  const SamplePage147({
    super.key,
  });

  @override
  State<SamplePage147> createState() => _SamplePage147State();
}

class _SamplePage147State extends State<SamplePage147> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CallbackShortcuts'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: CallbackShortcuts(
            bindings: <ShortcutActivator, VoidCallback>{
              const SingleActivator(LogicalKeyboardKey.keyU, control: true):
                  () {
                setState(() {
                  count = count + 1;
                });
              },
              const SingleActivator(LogicalKeyboardKey.keyD, control: true):
                  () {
                setState(() {
                  count = count - 1;
                });
              },
            },
            child: Focus(
              autofocus: true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('count: $count'),
                  const SizedBox(height: 40),
                  const Text('ここにフォーカスがある時にCtrl + Uでカウントアップ'),
                  const Text('ここにフォーカスがある時にCtrl + Dでカウントダウン'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
