import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SamplePage153 extends StatefulWidget {
  const SamplePage153({
    super.key,
  });

  @override
  State<SamplePage153> createState() => _SamplePage153State();
}

class _SamplePage153State extends State<SamplePage153> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('gap'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 200,
              color: Colors.red,
            ),
            const Gap(20),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            const Gap(20),
            Container(
              height: 200,
              color: Colors.yellow,
            ),
            const Gap(20),
            Container(
              height: 200,
              color: Colors.green,
            ),
            const Gap(20),
            Container(
              height: 200,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
