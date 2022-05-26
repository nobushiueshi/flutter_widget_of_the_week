import 'package:flutter/material.dart';

class SamplePage001 extends StatelessWidget {
  const SamplePage001({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SafeArea'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text('SafeAreaあり'),
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const _SamplePage001SubPage1();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('SafeAreaなし'),
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const _SamplePage001SubPage2();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SamplePage001SubPage1 extends StatelessWidget {
  const _SamplePage001SubPage1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SafeArea'),
      ),
      body: SafeArea(
        child: ListView(
          children: List.generate(
            100,
            (i) => const Text('This is some text.'),
          ),
        ),
      ),
    );
  }
}

class _SamplePage001SubPage2 extends StatelessWidget {
  const _SamplePage001SubPage2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SafeArea'),
      ),
      body: ListView(
        children: List.generate(
          100,
          (i) => const Text('This is some text.'),
        ),
      ),
    );
  }
}
