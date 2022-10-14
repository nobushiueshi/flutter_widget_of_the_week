import 'package:flutter/material.dart';

class SamplePage121 extends StatefulWidget {
  const SamplePage121({
    super.key,
  });

  @override
  State<SamplePage121> createState() => _SamplePage121State();
}

class _SamplePage121State extends State<SamplePage121> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    debugPrint('SamplePage121#build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatefulBuilder'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              StatefulBuilder(
                builder: (context, setState) => CheckboxListTile(
                  title: const Text('ページ全体がリビルドされない'),
                  value: _value,
                  onChanged: (newValue) {
                    // debugPrintされない.
                    // つまりページ全体がリビルドされない.
                    setState(() => _value = newValue ?? false);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // debugPrintされる.
          // ページ全体がリビルドされている。
          setState(() {
            _value = !_value;
          });
        },
        child: const Icon(Icons.check_box),
      ),
    );
  }
}
