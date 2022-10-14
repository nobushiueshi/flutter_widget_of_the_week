import 'package:flutter/material.dart';

class SamplePage120 extends StatefulWidget {
  const SamplePage120({
    super.key,
  });

  @override
  State<SamplePage120> createState() => _SamplePage120State();
}

class _SamplePage120State extends State<SamplePage120> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScaffoldMessenger'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Hello World!'),
            ),
          );
          await Future<void>.delayed(const Duration(seconds: 1));
          if (!mounted) {
            return;
          }
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.notification_add),
      ),
    );
  }
}
