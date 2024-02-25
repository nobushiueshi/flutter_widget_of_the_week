import 'package:flutter/material.dart';

class SamplePage117 extends StatelessWidget {
  const SamplePage117({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baseline'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ColoredBox(
              color: Colors.grey,
              child: Text('Hello World!'),
            ),
            SizedBox(height: 20),
            ColoredBox(
              color: Colors.grey,
              child: Baseline(
                baseline: 100,
                baselineType: TextBaseline.alphabetic,
                child: Text('Hello World!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
