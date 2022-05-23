import 'package:flutter/material.dart';

class SamplePage062 extends StatefulWidget {
  const SamplePage062({
    Key? key,
  }) : super(key: key);

  @override
  State<SamplePage062> createState() => _SamplePage062State();
}

class _SamplePage062State extends State<SamplePage062> {
  final _isSelected = <bool>[
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToggleButtons'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: ToggleButtons(
            isSelected: _isSelected,
            onPressed: (index) {
              setState(() {
                _isSelected[index] = !_isSelected[index];
              });
            },
            children: const [
              Icon(Icons.home),
              Icon(Icons.drive_eta),
              Icon(Icons.flutter_dash),
            ],
          ),
        ),
      ),
    );
  }
}
