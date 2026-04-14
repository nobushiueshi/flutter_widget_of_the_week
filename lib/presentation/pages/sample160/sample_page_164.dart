import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class SamplePage164 extends StatelessWidget {
  const SamplePage164({super.key});

  static final BoxStyler style = BoxStyler()
      .height(128)
      .width(128)
      .color(Colors.purple)
      .borderRounded(16);

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
