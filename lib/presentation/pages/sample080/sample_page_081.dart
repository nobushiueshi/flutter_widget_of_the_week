import 'package:flutter/material.dart';

class SamplePage081 extends StatefulWidget {
  const SamplePage081({
    super.key,
  });

  @override
  State<SamplePage081> createState() => _SamplePage081State();
}

class _SamplePage081State extends State<SamplePage081> {
  final List<bool> _values = [
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckboxListTile'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            CheckboxListTile(
              title: const Text('CheckboxListTile 1'),
              subtitle: const Text('ListTileControlAffinity.platform'),
              value: _values[0],
              onChanged: (value) {
                setState(() {
                  _values[0] = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('CheckboxListTile 2'),
              subtitle: const Text('ListTileControlAffinity.leading'),
              controlAffinity: ListTileControlAffinity.leading,
              value: _values[1],
              onChanged: (value) {
                setState(() {
                  _values[1] = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('CheckboxListTile 3'),
              subtitle: const Text('ListTileControlAffinity.trailing'),
              controlAffinity: ListTileControlAffinity.trailing,
              value: _values[2],
              onChanged: (value) {
                setState(() {
                  _values[2] = value ?? false;
                });
              },
            ),
            ListTile(
              title: const Text('ListTile'),
              subtitle: const Text('実装が少し手間'),
              trailing: Checkbox(
                value: _values[3],
                onChanged: (value) {
                  setState(() {
                    _values[3] = value ?? false;
                  });
                },
              ),
              onTap: () {
                setState(() {
                  _values[3] = !_values[3];
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
