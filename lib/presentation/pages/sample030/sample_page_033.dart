import 'package:flutter/material.dart';

class SamplePage033 extends StatefulWidget {
  const SamplePage033({
    Key? key,
  }) : super(key: key);

  @override
  State<SamplePage033> createState() => _SamplePage033State();
}

class _SamplePage033State extends State<SamplePage033> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.cyan,
                child: const Center(
                  child: Text(
                    '1/3\n(2 Flex / 6 Total)',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.teal,
                child: const Center(
                  child: Text(
                    '1/2\n(3 Flex / 6 Total)',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.indigo,
                child: const Center(
                  child: Text(
                    '1/6\n(1 Flex / 6 Total)',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
