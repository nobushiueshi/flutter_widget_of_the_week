import 'package:flutter/material.dart';

class SamplePage088 extends StatelessWidget {
  const SamplePage088({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [
            for (int i = 0; i < 9; i++)
              ColoredBox(
                color: Colors.blue[100 * (i % 9)] ?? Colors.white,
              ),
          ],
        ),
      ),
    );
  }
}
