import 'package:flutter/material.dart';

class SamplePage054 extends StatelessWidget {
  const SamplePage054({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(40),
            child: const Text('Less boring'),
          ),
        ),
      ),
    );
  }
}
