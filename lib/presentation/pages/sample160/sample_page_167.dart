import 'package:flutter/material.dart';

class SamplePage167 extends StatefulWidget {
  const SamplePage167({super.key});

  @override
  State<SamplePage167> createState() => _SamplePage167State();
}

class _SamplePage167State extends State<SamplePage167> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery.propertyOf'),
      ),
      body: Builder(
        builder: (context) {
          final orientation = MediaQuery.orientationOf(context);
          final size = MediaQuery.sizeOf(context);
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('orientation: ${orientation.name}'),
                Text('width: ${size.width}'),
                Text('height: ${size.height}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
