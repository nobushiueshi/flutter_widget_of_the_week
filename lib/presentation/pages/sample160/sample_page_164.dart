import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class SamplePage164 extends StatelessWidget {
  const SamplePage164({super.key});

  static final style = Style(
    $box.height(128),
    $box.width(128),
    $box.color.purple(),
    $box.borderRadius(16),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('mix'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Box(
            style: style,
            child: const Center(
              child: Text(
                'mixを使った\nBox',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
