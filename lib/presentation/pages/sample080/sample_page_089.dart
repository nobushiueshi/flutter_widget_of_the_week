import 'package:flutter/material.dart';

class SamplePage089 extends StatefulWidget {
  const SamplePage089({
    super.key,
  });

  @override
  State<SamplePage089> createState() => _SamplePage089State();
}

class _SamplePage089State extends State<SamplePage089> {
  bool valueA = false;
  bool valueB = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwitchListTile'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SwitchListTile(
              title: const Text('SwitchListTile'),
              value: valueA,
              onChanged: (value) {
                setState(() {
                  valueA = value;
                });
              },
            ),
            ListTile(
              title: const Text('ListTile + Switch'),
              onTap: () {
                setState(() {
                  valueB = !valueB;
                });
              },
              trailing: Switch(
                value: valueB,
                onChanged: (value) {
                  setState(() {
                    valueB = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
