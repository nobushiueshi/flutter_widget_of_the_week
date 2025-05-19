import 'package:flutter/material.dart';

class SamplePage160 extends StatefulWidget {
  const SamplePage160({super.key});

  @override
  State<SamplePage160> createState() => _SamplePage160State();
}

class _SamplePage160State extends State<SamplePage160> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List.generate'), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (int index) => Icon(
                Icons.star,
                color: Colors.primaries[index % Colors.primaries.length],
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
