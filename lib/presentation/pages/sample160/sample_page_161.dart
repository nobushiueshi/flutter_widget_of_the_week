import 'package:flutter/material.dart';

class SamplePage161 extends StatelessWidget {
  const SamplePage161({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Future.wait'), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: FutureBuilder<List<String>>(
            future: Future.wait<String>([
              Future<String>.delayed(const Duration(seconds: 1), () => 'A'),
              Future<String>.delayed(const Duration(seconds: 2), () => 'B'),
              Future<String>.delayed(const Duration(seconds: 3), () => 'C'),
            ]),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData) {
                return Text('Result: ${snapshot.data}');
              } else {
                return const Text('No data');
              }
            },
          ),
        ),
      ),
    );
  }
}
