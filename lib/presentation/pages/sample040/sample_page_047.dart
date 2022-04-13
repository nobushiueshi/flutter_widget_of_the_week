import 'package:flutter/material.dart';

class SamplePage047 extends StatefulWidget {
  const SamplePage047({
    Key? key,
  }) : super(key: key);

  @override
  State<SamplePage047> createState() => _SamplePage047State();
}

class _SamplePage047State extends State<SamplePage047> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semantics'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Semantics(
            label: 'Flutter Logo',
            image: true,
            enabled: true,
            child: const FlutterLogo(
              size: 128,
            ),
          ),
        ),
      ),
    );
  }
}
