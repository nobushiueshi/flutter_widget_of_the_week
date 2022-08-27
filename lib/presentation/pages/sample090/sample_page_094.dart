import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class SamplePage094 extends StatelessWidget {
  const SamplePage094({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('animations'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              OpenContainer(
                closedBuilder: (context, action) {
                  return const FlutterLogo(
                    size: 64,
                  );
                },
                openBuilder: (context, action) {
                  return const SamplePage094Second();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SamplePage094Second extends StatelessWidget {
  const SamplePage094Second({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(''),
      ),
    );
  }
}
