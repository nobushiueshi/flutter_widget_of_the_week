import 'package:flutter/material.dart';

class SamplePage128 extends StatefulWidget {
  const SamplePage128({
    super.key,
  });

  @override
  State<SamplePage128> createState() => _SamplePage128State();
}

class _SamplePage128State extends State<SamplePage128> {
  final data = <String>[
    'flutter',
    'dart',
    'google',
    'android',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autocomplete'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Autocomplete<String>(
          optionsBuilder: (textEditingValue) {
            if (textEditingValue.text.isEmpty) {
              return const Iterable.empty();
            }
            return data.where((x) {
              return x.contains(textEditingValue.text);
            });
          },
          onSelected: (option) {},
        ),
      ),
    );
  }
}
