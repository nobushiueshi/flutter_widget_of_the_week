import 'package:flutter/material.dart';

class SamplePage047 extends StatelessWidget {
  const SamplePage047({
    Key? key,
  }) : super(key: key);

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
