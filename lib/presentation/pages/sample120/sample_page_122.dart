import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SamplePage122 extends StatefulWidget {
  const SamplePage122({
    super.key,
  });

  @override
  State<SamplePage122> createState() => _SamplePage122State();
}

class _SamplePage122State extends State<SamplePage122> {
  @override
  void initState() {
    super.initState();
    debugRepaintRainbowEnabled = true;
  }

  @override
  void dispose() {
    debugRepaintRainbowEnabled = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RepaintBoundary'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RepaintBoundary(
                child: SamplePage122Rotate(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SamplePage122Rotate extends StatefulWidget {
  const SamplePage122Rotate({
    super.key,
  });

  @override
  State<SamplePage122Rotate> createState() => _SamplePage122RotateState();
}

class _SamplePage122RotateState extends State<SamplePage122Rotate>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
    animation = Tween<double>(
      begin: 0,
      end: 2 * pi,
    ).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        child: const FlutterLogo(
          size: 100,
        ),
        builder: (context, child) {
          return Transform.rotate(
            angle: animation.value,
            child: child,
          );
        },
      ),
    );
  }
}
