import 'dart:async';

import 'package:flutter/material.dart';

class SamplePage163 extends StatelessWidget {
  const SamplePage163({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Completers'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: Sample163Completer().result,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              return Center(child: Text('Result: ${snapshot.data}'));
            }
          },
        ),
      ),
    );
  }
}

class Sample163Completer {
  Sample163Completer() {
    Future.delayed(const Duration(seconds: 2), () {
      completer.complete('Operation completed');
    });
  }

  final Completer<String> completer = Completer<String>();

  Future<String> get result => completer.future;
}
