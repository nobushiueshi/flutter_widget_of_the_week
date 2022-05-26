import 'package:flutter/material.dart';

class SamplePage020 extends StatelessWidget {
  const SamplePage020({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBox'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Text('FittedBoxなし'),
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.grey,
              child: const _SamplePage020Child(),
            ),
            const Center(
              child: Text('FittedBox BoxFit.fill'),
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.grey,
              child: const FittedBox(
                fit: BoxFit.fill,
                child: _SamplePage020Child(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SamplePage020Child extends StatelessWidget {
  const _SamplePage020Child();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/sample.png',
    );
  }
}
