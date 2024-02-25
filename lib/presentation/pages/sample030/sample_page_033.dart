import 'package:flutter/material.dart';

class SamplePage033 extends StatefulWidget {
  const SamplePage033({
    super.key,
  });

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
      body: const SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: ColoredBox(
                color: Colors.cyan,
                child: Center(
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
              child: ColoredBox(
                color: Colors.teal,
                child: Center(
                  child: Text(
                    '1/2\n(3 Flex / 6 Total)',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Flexible(
              child: ColoredBox(
                color: Colors.indigo,
                child: Center(
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
