import 'package:flutter/material.dart';

class SamplePage155 extends StatefulWidget {
  const SamplePage155({
    super.key,
  });

  @override
  State<SamplePage155> createState() => _SamplePage155State();
}

class _SamplePage155State extends State<SamplePage155> {
  var _backgroundColor = Colors.red[400];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownMenu'),
        centerTitle: true,
      ),
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownMenu(
                initialSelection: _backgroundColor,
                dropdownMenuEntries: [
                  DropdownMenuEntry(
                    value: Colors.red[400],
                    label: 'Red',
                  ),
                  DropdownMenuEntry(
                    value: Colors.blue[400],
                    label: 'Blue',
                  ),
                  DropdownMenuEntry(
                    value: Colors.purple[400],
                    label: 'Purple',
                  ),
                  DropdownMenuEntry(
                    value: Colors.green[400],
                    label: 'Green',
                  ),
                  DropdownMenuEntry(
                    value: Colors.brown[400],
                    label: 'Brown',
                  ),
                ],
                onSelected: (value) {
                  setState(() {
                    _backgroundColor = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
