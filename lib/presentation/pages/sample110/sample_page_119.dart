import 'package:flutter/material.dart';

class SamplePage119 extends StatefulWidget {
  const SamplePage119({
    super.key,
  });

  @override
  State<SamplePage119> createState() => _SamplePage119State();
}

class _SamplePage119State extends State<SamplePage119> {
  int selectedVale = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownButton'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButton<int>(
              value: selectedVale,
              items: const [
                DropdownMenuItem(value: 0, child: Text('Dash')),
                DropdownMenuItem(value: 1, child: Text('Sparky')),
                DropdownMenuItem(value: 2, child: Text('Snoo')),
                DropdownMenuItem(value: 3, child: Text('Clippy')),
              ],
              onChanged: (value) {
                if (value == null) {
                  return;
                }
                setState(() {
                  selectedVale = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text('selectedValue : $selectedVale'),
          ],
        ),
      ),
    );
  }
}
