import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SamplePage144 extends StatefulWidget {
  const SamplePage144({
    super.key,
  });

  @override
  State<SamplePage144> createState() => _SamplePage144State();
}

class _SamplePage144State extends State<SamplePage144> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_animate'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('Hello World!').animate().fade().scale(),
              const SizedBox(height: 20),
              Column(
                children: [
                  const Text('Hello'),
                  const Text('World'),
                  const Text('Goodbye'),
                ].animate(interval: 400.ms).fade(duration: 300.ms),
              ),
              const SizedBox(height: 20),
              const Text('Before').animate().swap(
                duration: 900.ms,
                builder: (_, _) => const Text('After'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
