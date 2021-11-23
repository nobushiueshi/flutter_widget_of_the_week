import 'package:flutter/material.dart';

class Widget001 extends StatelessWidget {
  const Widget001({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SafeArea'),
      ),
      body: SafeArea(
        child: ListView(
          children: List.generate(
            100,
            (i) => const Text('This is some text.'),
          ),
        ),
      ),
    );
  }
}
