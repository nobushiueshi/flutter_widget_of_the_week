import 'package:flutter/material.dart';

class SamplePage087 extends StatelessWidget {
  const SamplePage087({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InteractiveViewer'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: InteractiveViewer(
            child: const FlutterLogo(
              size: 512,
            ),
          ),
        ),
      ),
    );
  }
}
